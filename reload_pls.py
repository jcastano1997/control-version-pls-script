import sys
from pathlib import Path

# Open and read the backup file
file_object = open("backup.sql", encoding="utf8");
sql_backup = file_object.read();
file_object.close();

count_pls = 0;

# Find all PL's in the backup file
finish = False;
while not finish:
    # Where start the PL
    start_pl = sql_backup.find("CREATE FUNCTION");
    if start_pl != -1:
        # Where finish the PL
        end_pl = sql_backup.find("ALTER FUNCTION") + sql_backup[sql_backup.find("ALTER FUNCTION"):-1].find(";") + 1;
        # Find the name of the Schema
        first_quote = start_pl + sql_backup[start_pl:end_pl].find("\"") + 1;
        second_quote = first_quote + sql_backup[first_quote:end_pl].find("\"");
        schema_name = sql_backup[first_quote:second_quote];
        # IF is a valid function
        if (sql_backup[second_quote+2] == "\""):
            # Find the name of the Function
            first_quote = (second_quote + 1) + sql_backup[(second_quote + 1):end_pl].find("\"") + 1;
            second_quote = first_quote + sql_backup[first_quote:end_pl].find("\"");
            function_name = sql_backup[first_quote:second_quote];
            # Create the directory
            Path(schema_name).mkdir(parents=True, exist_ok=True);
            # print(count_pls); print(schema_name); print(function_name);
            # print(sql_backup[start_pl:end_pl]);
            try:
                # Write or create the file
                plsql = open("./" + schema_name + "/" + function_name + ".sql","w+");
                plsql.write(sql_backup[start_pl:end_pl]);
                # Save the changes
                # plsql.flush();
                plsql.close();
            except IOError as err:
                errno, strerror = err.args
                print("I/O error({0}): {1}".format(errno, strerror))
            count_pls = count_pls + 1;
            sql_backup = sql_backup[end_pl:-1];
        else:
            sql_backup = sql_backup[end_pl:-1];
    else:
        # No have more PL's
        finish = True;

print("Finish the process with " + str(count_pls) + " PL's");