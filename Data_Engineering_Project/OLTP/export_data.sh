#!/bin/bash
mysqldump -u root -p sales sales_data > sales_data.sql
echo "Data has been exported to sales_data_export.sql"