SELECT
	InvoiceDate,
	strftime('%Y',InvoiceDate) as Year,
	strftime('%m',InvoiceDate) as month,
	strftime('%d',InvoiceDate) as day,
	strftime('%Y-%m-%d',invoiceDate) as Ddate
FROM invoices
WHERE Year = '2010';
-- หรือ 
SELECT
	InvoiceDate,
	CAST(strftime('%Y',InvoiceDate) as INT) as Year,
	CAST(strftime('%m',InvoiceDate) as INT) as month,
	CAST(strftime('%d',InvoiceDate) as int) as day,
	CAST(strftime('%Y-%m-%d',invoiceDate) as int) as Ddate
FROM invoices
WHERE Year = 2010;
