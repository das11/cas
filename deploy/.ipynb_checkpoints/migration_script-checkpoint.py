import xlrd
import pymysql.cursors
import time

start_time = time.time()

# Open the workbook and define the worksheet
book = xlrd.open_workbook("../mimobile.xls")
sheet = book.sheet_by_index(0)

# Establish a MySQL connection
database = pymysql.connect (host="localhost", port = 8889, user = "root", password = "root", db = "cas")

# Get the cursor, which is used to traverse the database, line by line
cursor = database.cursor()

# Create the INSERT INTO sql query
query = """INSERT INTO products (id, name, price, online, availability, featured_image, cart_id, description) VALUES ('0',%s,'0','0','0','0','0','0')"""


def view_all_data() : 

    num_cols = sheet.ncols   # Number of columns
    for row_idx in range(0, sheet.nrows):    # Iterate through rows

        print ('-'*40)
        print ('Row: %s' % row_idx)   # Print row number
        for col_idx in range(0, num_cols):  # Iterate through columns

            cell_obj = sheet.cell(row_idx, col_idx)  # Get cell object by row, col
            print ('Column: [%s] cell_obj: [%s]' % (col_idx, cell_obj))

def inflate_data() :

    num_cols = sheet.ncols
    for row_idx in range(13, 63):
        for col_idx in range(0, num_cols-1):

            print("[%d][%d] : " %(row_idx, col_idx) + sheet.cell(row_idx, col_idx).value)
            val = sheet.cell(row_idx, col_idx).value
            values = (val)
            cursor.execute(query, values)



def main() :

    inflate_data()

    # Close the cursor
    cursor.close()

    # Commit the transaction
    database.commit()

    # Close the database connection
    database.close()

    # Print results

    columns = str(sheet.ncols)
    rows = str(sheet.nrows)

    print("\n\n\n" + "#"*40)
    print("Processed \" %2s columns and %2s \" rows to DB!" %(columns, rows))
    print(u'\u2705' " Exec Time : ", (time.time() - start_time))
    print("#"*40)

    return 


if __name__ == '__main__' : 
    main()

