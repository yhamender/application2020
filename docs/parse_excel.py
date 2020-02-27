import xlrd
import pymysql.cursors

from datetime import date, timedelta


connection = pymysql.connect(host='localhost',
                             user='animesh',
                             password='user',
                             db='gsp_audit17',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)


def from_excel_ordinal(ordinal, _epoch=date(1900, 1, 1)):
    if ordinal > 59:
        ordinal -= 1  # Excel leap year bug, 1900 is not a leap year!
    return _epoch + timedelta(days=ordinal - 1)  # epoch is day 1


def open_file(path):
    # opening excel file
    book = xlrd.open_workbook(path)
    first_sheet = book.sheet_by_index(0)

    # opening database
    try:
        with connection.cursor() as cursor:
            for i in range(1, first_sheet.nrows):
                cells = first_sheet.row_slice(rowx=i, start_colx=1, end_colx=22)
                # print(cells[11].value)
                school_id = cells[0].value
                name = cells[1].value
                address1 = cells[2].value
                address2 = cells[3].value
                country = cells[4].value
                state = cells[5].value
                district = cells[6].value
                city = cells[7].value
                pin_code = cells[8].value
                if not isinstance(pin_code, float):
                    pin_code = ''.join(pin_code.split(' '))
                if not pin_code:
                    pin_code = 0
                std_code = cells[10].value
                if not isinstance(std_code, float):
                    std_code = ''.join(std_code.split(' '))
                if not std_code:
                    std_code = 0
                try:
                    std_code = int(std_code)
                    if std_code > 9999:
                        std_code = 0
                except ValueError:
                    std_code = 0
                land_line = cells[11].value
                if not isinstance(land_line, float):
                    land_line = ''.join(land_line.split(' '))
                    land_line = land_line.split('-')[-1]
                    land_line = land_line.split(')')[-1][:-1]
                    try:
                        land_line = float(land_line)
                    except ValueError:
                        land_line = 0
                if not land_line:
                    land_line = 0
                isd_code = 91
                school_email = cells[12].value
                principal_name = cells[13].value
                principal_mobile = cells[14].value
                if not type(principal_mobile) == type(3.3):
                    principal_mobile = ''.join(principal_mobile.split(' '))
                if not principal_mobile:
                    principal_mobile = 0
                coordinator_name = cells[15].value
                coordinator_email = cells[16].value
                coordinator_mobile = cells[17].value
                if not isinstance(coordinator_mobile, float):
                    coordinator_mobile = ''.join(coordinator_mobile.split(' '))
                if not coordinator_mobile:
                    coordinator_mobile = 0
                password = cells[18].value
                datetime = from_excel_ordinal(cells[19].value)
                progress = cells[20].value
                user_status = 0
                if not isinstance(progress, float):
                    if progress[-1] == '%':
                        progress = progress[: -1]
                try:
                    progress = float(progress)
                except ValueError:
                    progress = 0

                sql_user = ("INSERT INTO gsp_user (email, password, status, username) VALUES "
                            "(%s, %s, %s, %s)")
                cursor.execute(sql_user, (
                  coordinator_email, password, user_status, name  # change school_email with
                ))

                sql_select_user = ("SELECT id FROM gsp_user WHERE email=%s")
                cursor.execute(sql_select_user, (coordinator_email, ))
                result = cursor.fetchone()
                # print(result['id'])
                user_id = result['id']

                sql = ("INSERT INTO gsp_school_1 (id, userid, name, address1,"
                       " address2, country, state, district, city,"
                       " pincode, std, telephone, country_code, schoolemail,"
                       " principle_name, mobile, coname, coemail, comobile,"
                       " progress, date_added, password) VALUES (%s, %s, %s, %s, %s, %s, %s,"
                       " %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)")
                cursor.execute(sql, (
                  school_id,  # school ID
                  user_id,  # userid
                  name,  # name
                  address1,  # address 1
                  address2,  # address 2
                  country,  # country
                  state,  # state
                  district,  # district
                  city,  # city
                  pin_code,  # pincode
                  std_code,  # std code
                  land_line,  # landline
                  isd_code,  # isd code
                  school_email,  # school email
                  principal_name,  # principal name
                  principal_mobile,  # principal mobile
                  coordinator_name,  # coordinator name
                  coordinator_email,  # coordinator email
                  coordinator_mobile,  # coordinator mobile
                  progress,                # progress
                  datetime,  # date & time
                  password
                ))
        connection.commit()
    finally:
        connection.close()


if __name__ == '__main__':
    open_file('schools_data.xlsx')
