Phonebook API
====================
V1
---------------------
/api/v1/employees
---------------------

获取员工的通讯录

URL

`http://#{host}/api/v1/employees`

支持格式

`JSON`

HTTP请求方式

`GET`

参数说明
<table>
  <tr>
    <th></th>
    <th>必选</th>
    <th>类型及范围</th>
    <th>说明</th>
  </tr>
  <tr>
    <td>page</td>
    <td>false</td>
    <td>int</td>
    <td>返回结果的页码，默认为1。<td>
  </tr>
  <tr>
    <td>per_page</td>
    <td>false</td>
    <td>int</td>
    <td>单页返回的记录条数，默认为20。</td>
  </tr>
</table>

/api/v1/employees/:id
---------------------

获取单员工的通讯录

URL

`http://#{host}/api/v1/employees/:id`

支持格式

`JSON`

HTTP请求方式

`GET`

说明
`:id`是要获取的employee的id

/api/v1/departments
---------------------

获取部门信息

URL

`http://#{host}/api/v1/departments`

支持格式

`JSON`

HTTP请求方式

`GET`

参数说明
<table>
  <tr>
    <th></th>
    <th>必选</th>
    <th>类型及范围</th>
    <th>说明</th>
  </tr>
  <tr>
    <td>page</td>
    <td>false</td>
    <td>int</td>
    <td>返回结果的页码，默认为1。<td>
  </tr>
  <tr>
    <td>per_page</td>
    <td>false</td>
    <td>int</td>
    <td>单页返回的记录条数，默认为20。</td>
  </tr>
</table>

/api/v1/departments/:id
---------------------

获取单个部门信息

URL

`http://#{host}/api/v1/departments/:id`

支持格式

`JSON`

HTTP请求方式

`GET`

说明
`:id`是要获取的department的id
