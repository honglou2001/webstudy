INSERT INTO currence_line_data (`fsymbol`,`ftsid`,`ftimestamp`,`fopen`,`fclose`,`fprice`,`fmax`,`flow`,`ffrom`
)
VALUES
  ('btc-usdt',1,1,1.0,2.0, 3.0,4.0,19.99,'huobi'
  );

DELETE FROM currence_line_data

SELECT 	* FROM currence_line_data

DELETE FROM currence_tickers
SELECT 	* FROM currence_tickers

ALTER TABLE `dbmcmsopen`.`currence_line_data` ADD COLUMN `famount` DECIMAL(19,8) NULL AFTER `fvol`; 
ALTER TABLE `dbmcmsopen`.`currence_tickers` ADD COLUMN `famount` DECIMAL(19,8) NULL AFTER `fvol`; 

INSERT INTO currence_line_data (`fsymbol`,`ftsid`,`ftimestamp`,`fopen`,`fclose`,`fprice`,`fmax`,`flow`,`ffrom`)VALUES('btc-usdt',1,1,1.0,2.0, 3.0,4.0,1.1,'huobi');

SELECT * FROM dbmcmsopen.currence_line_data