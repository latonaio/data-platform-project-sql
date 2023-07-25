# data-platform-project-sql  
data-platform-project-sql は、データ連携基盤において、プロジェクトデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-project-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview      

## sqlの設定ファイル

data-platform-project-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* data-platform-project-sql-project-data.sql（データ連携基盤 プロジェクト - プロジェクトデータ）
* data-platform-project-sql-wbs-element-data.sql（データ連携基盤 プロジェクト - WBS要素データ）
* data-platform-project-sql-network-data.sql（データ連携基盤 プロジェクト - ネットワークデータ）
* data-platform-project-sql-network-component-data.sql（データ連携基盤 プロジェクト - ネットワーク構成品目データ）
* data-platform-project-sql-network-component-delivery-schedule-line-data.sql（データ連携基盤 プロジェクト - ネットワーク構成品目納入日程行データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
