# data-platform-product-stock-sql  
data-platform-product-stock-sql は、データ連携基盤において、品目在庫データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-product-stock-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview      

## sqlの設定ファイル

data-platform-product-stock-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-project-sql-project-data.sql（SAP プロジェクト - プロジェクトデータ）
* sap-project-sql-wbs-element-data.sql（SAP プロジェクト - WBS要素データ））

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
