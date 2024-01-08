---
design_pattern_id: 8
name: Reading / Writing from a SQL Database with Creator Studio # Name of the use case
description: Setup a REST server and securely connect to your SQL database to access analytical queries, and update records based on your business use case # Brief description of the use case
systems: [azure-function-app]  # List of systems involved in the use case
purple_chat_link: https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A9774%2C%22title%22%3A%22Check+DOA+Level+by+Preferred+Name%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22What+was+Walter+Sopp%27s+DOA+level%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Moveworks+extracts+%5C%22Walter+Sopp%5C%22+and+maps+to+API+value.+Also+extracts+requester%27s+email+as+implicit+value+to+be+passed+to+API%3A+%5Cn%5Cn+%7B%5C%22requester_email%5C%22%3A+%5C%22wsopp%40moveworks.ai%5C%22%7D%5Cn+%7B%5C%22name%5C%22%3A+%5C%22Walter+Sopp%5C%22%7D%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Extracted+entities+are+sent+to+middleware+API.%5Cn%5CnMiddleware+API+validates%5Cn1.+User+access+with+%3Ccode%3Erequester_email%3C%2Fcode%3E%5Cn2.+Looks+up+current+date%5Cn%7B%5C%22date%5C%22%3A+%5C%22February+15%2C+2023%5C%22%7D%5Cn3.+Builds+a+SQL+Query+wth+name+and+date.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Azure+SQL+database+returns+a+list+of+roles+for+the+specified+user%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22SQL+list+is+formatted+into+a+JSON+and+sent+to+Creator+Studio%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Fetching+your+records...%5Cn%5CnHere%27s+what+I+found%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Lookup+DOA+Levels+by+Name%22%2C%22text%22%3A%22Walter+Sopp%3A+JSR_PU_REQ_APP_CST_CNTR_LEVEL3%22%7D%2C%7B%22text%22%3A%22Walter+Sopp%3A+JSR_PU_REQ_APP_CAPTL_LEVEL3%22%7D%2C%7B%22text%22%3A%22Walter+Sopp%3A+JJSR_PU_REQ_APP_PRCE_LEVEL3%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Role+Details+in+Sharepoint+KB%22%7D%2C%7B%22text%22%3A%22Got+it%2C+thanks%21%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22SQL+data+%28TBD+how%29+presented+to+user+showing+their+various+roles%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22CAPTL%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure+thing%21+Here+is+the+RECORD%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Walter+Sopp%3A+JSR_PU_REQ_APP_CAPTL_LEVEL3%22%7D%2C%7B%22text%22%3A%22Custom+ID%3A+soppwc%22%7D%2C%7B%22text%22%3A%22Preferred+Name%3A+Walter+Sopp%22%7D%2C%7B%22text%22%3A%22DOA+Level%3A+JSR_PU_REQ_APP_CAPTL_LEVEL3%22%7D%2C%7B%22text%22%3A%22Role+Description%3A+Employee+is+level+3%2C+and+has+authority+to+approve+purchase+requisitions+for+the+CAPTL+team.%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Role+Details+in+Sharepoint+KB%22%7D%2C%7B%22text%22%3A%22Got+it%2C+thanks%21%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D # URL of the linked chat
time_in_minutes: 60 # Time in minutes to complete the use case
difficulty_level: Intermediate # Difficulty level: "Beginner", "Intermediate", or "Advanced"
---

# Reading / Writing from a SQL Database with Creator Studio

# **Introduction**

In this guide, we will walk you through how you can empower your employees to act on business data inside a SQL database with the help of [Moveworks Creator Studio](https://developer.moveworks.com/) and RESTful APIs. Using an API layer for database interactions offers several benefits, such as improved security, abstraction, validation, and maintainability. Additionally Creator Studio allows you to quickly develop a conversational AI experience in minutes without being hindered by all the considerations of traditional application development.

By the end of this guide, you'll have a clear understanding of how to design and implement robust APIs for managing data in your table, and how you quickly integrate these APIs with Creator Studio.

[Screenshare - 2023-08-07 7_37_49 PM.mp4](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Screenshare_-_2023-08-07_7_37_49_PM.mp4)

# **Prerequisites**

Before we begin, ensure that you have the following:

- Basic knowledge of Python and database concepts.
- A Python environment set up on your machine.
- An understanding of RESTful API principles.
- Optional: Access to serverless API services like AWS Lambdas & Azure Functions

<aside>
🛑 Note: we are interacting with a mysql database for the purposes of this demo. You can connect to any other SQL database you want and install the appropriate database drivers like [pyodbc](https://pypi.org/project/pyodbc/) instead.

</aside>

# *************(Optional)************* Environment Setup

<aside>
💡 Feel free to skip this section and jump straight to the [quickstart guide](https://www.notion.so/Reading-Writing-from-a-SQL-Database-with-Creator-Studio-50f08a8cdfdc44318ae25c7d94560589?pvs=21)

</aside>

## MySQL Database

For this guide we assume that this data lives inside of a MySQL database with the following schema

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled.png)

You can create a table like this yourself with the following SQL command

```sql
CREATE TABLE doa_levels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    custom_id VARCHAR(50),
    preferred_name VARCHAR(100),
    role VARCHAR(100),
    as_of_date DATE
);
```

Insert some example data to populate this `doa_levels` table and confirm with a select command as follows

```sql
INSERT INTO your_table_name (custom_id, preferred_name, role) VALUES
    ('soppwc', 'Walter Sopp', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('soppwc', 'Walter Sopp', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('smithj', 'John Smith', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('smithj', 'John Smith', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('doej', 'Jane Doe', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('doej', 'Jane Doe', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('browna', 'Alice Brown', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('browna', 'Alice Brown', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('lewisr', 'Robert Lewis', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('lewisr', 'Robert Lewis', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('gomezg', 'Gabriela Gomez', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('gomezg', 'Gabriela Gomez', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('kims', 'Sung Kim', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('kims', 'Sung Kim', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('millert', 'Taylor Miller', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('millert', 'Taylor Miller', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('yangl', 'Ling Yang', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('yangl', 'Ling Yang', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04'),
    ('parkc', 'Chang Park', 'JSR:PU_REQ_APP_CST_CNTR_LEVEL3', '2023-08-04'),
    ('parkc', 'Chang Park', 'JSR_PU_REQ_APP_CAPTL_LEVEL3', '2023-08-04');
```

```sql
SELECT * FROM doa_levels;
```

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%201.png)

## Python Virtual Environment

We will be creating a [conda](https://docs.conda.io/en/latest/) python virtual environment through this command

```bash
conda create --name <environment_name>
```

We will install the necessary packages through this command

```bash
conda install -c conda-forge mysqlclient fastapi uvicorn-standard
```

Alternatively, you can create your environment and install all necessary packages through a file that lists all required python modules

- `requirements.txt`
    
    ```
    # This file may be used to create an environment using:
    # $ conda create --name <env> --file <this file>
    # platform: osx-arm64
    anyio=3.5.0=py311hca03da5_0
    bzip2=1.0.8=h620ffc9_4
    ca-certificates=2023.7.22=hf0a4a13_0
    click=8.0.4=py311hca03da5_0
    fastapi=0.101.0=pyhd8ed1ab_0
    h11=0.12.0=pyhd3eb1b0_0
    httptools=0.5.0=py311h80987f9_1
    idna=3.4=py311hca03da5_0
    libcxx=16.0.6=h4653b0c_0
    libexpat=2.5.0=hb7217d7_1
    libffi=3.4.4=hca03da5_0
    libsqlite=3.42.0=hb31c410_0
    libuv=1.44.2=h80987f9_0
    libzlib=1.2.13=h53f4e23_5
    mysql-common=8.0.33=h7b5afe1_2
    mysql-libs=8.0.33=hb292caa_2
    mysqlclient=2.2.0=py311ha891d26_0
    ncurses=6.4=h313beb8_0
    openssl=3.1.2=h53f4e23_0
    pip=23.2.1=py311hca03da5_0
    pydantic=1.10.8=py311h80987f9_0
    python=3.11.4=h47c9636_0_cpython
    python-dotenv=0.21.0=py311hca03da5_0
    python_abi=3.11=3_cp311
    pyyaml=6.0=py311h80987f9_1
    readline=8.2=h1a28f6b_0
    setuptools=68.0.0=py311hca03da5_0
    sniffio=1.2.0=py311hca03da5_1
    starlette=0.27.0=pyhd8ed1ab_0
    tk=8.6.12=hb8d0fd4_0
    typing-extensions=4.7.1=py311hca03da5_0
    typing_extensions=4.7.1=py311hca03da5_0
    tzdata=2023c=h04d1e81_0
    uvicorn=0.23.2=py311h267d04e_0
    uvicorn-standard=0.23.2=ha1ab1f8_0
    uvloop=0.17.0=py311h80987f9_0
    watchfiles=0.19.0=py311heb423af_0
    websockets=10.4=py311h80987f9_1
    wheel=0.38.4=py311hca03da5_0
    xz=5.4.2=h80987f9_0
    yaml=0.2.5=h1a28f6b_0
    zlib=1.2.13=h53f4e23_5
    zstd=1.5.2=h4f39d0f_7
    ```
    

```bash
conda create --name <environment_name> --file requirements.txt
```

## Ngrok

Ngrok is a free service that lets you make [localhost](http://localhost) API endpoints available over the internet with one command. This helps you quickly prototype different experience endpoints with Creator Studio.

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%202.png)

To configure ngrok correctly, please complete

1. The [getting started guide](https://ngrok.com/docs/getting-started/)
2. The [agent configuration guide](https://ngrok.com/docs/secure-tunnels/ngrok-agent/reference/config/) 

By the end, you will have a ngrok configuration like this

```yaml
version: "2"
authtoken: <auth_token>
tunnels:
  tunnel:
    proto: http
    hostname: top-one-ingestion.ngrok-free.app
    addr: 127.0.0.1:80
```

# *(Optional)* Technical Architecture

<aside>
💡 Feel free to skip this section and jump straight to the [quickstart guide](https://www.notion.so/Reading-Writing-from-a-SQL-Database-with-Creator-Studio-50f08a8cdfdc44318ae25c7d94560589?pvs=21)

</aside>

The process of making data from a SQL database available in chat follows these steps:

1. Collect necessary user context from chat and from the external systems
2. Check whether the user has access to the requested data
3. Connect to SQL database
4. Compile and execute SQL query with user and external system context
5. Return a formatted response through a REST API

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%203.png)

We are simplifying this guide by assuming that the user always has access to the necessary data (though this can be easily implemented through an additional SQL query as described in the quickstart guide). 

# Quickstart Guide

The use case we will implement involves looking up the Delegation of Authority (DOA) within an organization. We will specify the preferred name of an employee in chat, and this name will be used to search and filter matching employees. Any corresponding DOA levels will be returned as a JSON list.

![purple-chat (16).png](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/purple-chat_(16).png)

[Link to Editable Chat Mocks](https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A9774%2C%22title%22%3A%22Check+DOA+Level+by+Preferred+Name%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22What+was+Walter+Sopp%27s+DOA+level%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Moveworks+extracts+%5C%22John+Doe%5C%22+and+maps+to+API+value.+Also+extracts+requester%27s+email+as+implicit+value+to+be+passed+to+API%3A+%5Cn%5Cn+%7B%5C%22requester_email%5C%22%3A+%5C%22gwen%40moveworks.ai%5C%22%7D%5Cn+%7B%5C%22name%5C%22%3A+%5C%22John+Doe%5C%22%7D%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Extracted+entities+are+sent+to+middleware+API.%5Cn%5CnMiddleware+API+validates%5Cn1.+User+access+with+%3Ccode%3Erequester_email%3C%2Fcode%3E%5Cn2.+Looks+up+current+date%5Cn%7B%5C%22date%5C%22%3A+%5C%22February+15%2C+2023%5C%22%7D%5Cn3.+Builds+a+SQL+Query+wth+name+and+date.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Azure+SQL+database+returns+a+list+of+roles+for+the+specified+user%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22SQL+list+is+formatted+into+a+JSON+and+sent+to+Creator+Studio%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Fetching+your+records...%5Cn%5CnHere%27s+what+I+found%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Lookup+DOA+Levels+by+Name%22%2C%22text%22%3A%22Walter+Sopp%3A+JSR_PU_REQ_APP_CST_CNTR_LEVEL3%22%7D%2C%7B%22text%22%3A%22Walter+Sopp%3A+JSR_PU_REQ_APP_CAPTL_LEVEL3%22%7D%2C%7B%22text%22%3A%22Walter+Sopp%3A+JJSR_PU_REQ_APP_PRCE_LEVEL3%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Role+Details+in+Sharepoint+KB%22%7D%2C%7B%22text%22%3A%22Got+it%2C+thanks%21%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22SQL+data+%28TBD+how%29+presented+to+user+showing+their+various+roles%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22CAPTL%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure+thing%21+Here+is+the+RECORD%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Walter+Sopp%3A+JSR_PU_REQ_APP_CAPTL_LEVEL3%22%7D%2C%7B%22text%22%3A%22Custom+ID%3A+soppwc%22%7D%2C%7B%22text%22%3A%22Preferred+Name%3A+Walter+Sopp%22%7D%2C%7B%22text%22%3A%22DOA+Level%3A+JSR_PU_REQ_APP_CAPTL_LEVEL3%22%7D%2C%7B%22text%22%3A%22Role+Description%3A+Employee+is+level+3%2C+and+has+authority+to+approve+purchase+requisitions+for+the+CAPTL+team.%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Role+Details+in+Sharepoint+KB%22%7D%2C%7B%22text%22%3A%22Got+it%2C+thanks%21%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D)

By the end of this guide, you will have REST API endpoints that can create / read / update / delete data from a SQL database on serverless cloud environments like [Azure Functions](https://learn.microsoft.com/en-us/azure/azure-functions/functions-overview?pivots=programming-language-csharp) or [AWS Lambda](https://aws.amazon.com/lambda/). You will be using these API endpoints to build the above chat experience in [Moveworks Creator Studio](https://developer.moveworks.com/).

You will also have a powerful local development environment with REST APIs that you can easily test in an API client like [postman](https://postman.com).

If you do not want to create REST APIs, you can follow along with a readymade REST API with a connected database at `https://pup-one-informally.ngrok-free.app`. 

<aside>
👉 Browse the API documentation at [https://pup-one-informally.ngrok-free.app/docs](https://pup-one-informally.ngrok-free.app/docs#/)

</aside>

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%204.png)

See the Appendix for Details and example cURL commands.

## **Step 1: Set Up the Project Structure**

Start by creating the directory structure for your project:

```bash
my_api_project/
  ├── main.py
  ├── app/
  │   ├── __init__.py
  │   ├── database.py
  │   └── models.py
  └── .env
```

## **Step 2: Install Dependencies and the database credentials**

We'll need some third-party libraries to build the API. Install them using [conda](https://docs.conda.io/en/latest/):

```bash
conda install -c conda-forge mysqlclient fastapi uvicorn-standard
```

Additionally, we will save our MySQL Database credentials inside the `.env` file which looks as follows

```bash
HOST=<database host>
USERNAME=<username>
PASSWORD=<password>
DATABASE=<database name>
```

## **Step 3: Create the Main Application Entry Point**

In **`main.py`**, set up the FastAPI application and import the API routers.

```python
# main.py
from fastapi import FastAPI
from app.doa_levels import router as doa_levels_router

app: FastAPI = FastAPI()

# Mounting the doa_levels router
app.include_router(doa_levels_router)
```

<aside>
💡 Note: You can copy-paste this [example `main.py` script](https://www.notion.so/Reading-Writing-from-a-SQL-Database-with-Creator-Studio-50f08a8cdfdc44318ae25c7d94560589?pvs=21) and skip to [deploying the API](https://www.notion.so/Reading-Writing-from-a-SQL-Database-with-Creator-Studio-50f08a8cdfdc44318ae25c7d94560589?pvs=21) if you want

</aside>

## **Step 4: Configure Database Connection**

In **`app/database.py`**, set up the database connection and utility functions.

```python
# app/database.py
import os
import MySQLdb
from dotenv import load_dotenv
from fastapi import HTTPException
from typing import List, Dict, Any, Optional

### Load environment variables
load_dotenv()

### Database setup and utilities
def setup_database_connection() -> MySQLdb.Connection:
    """Set up and return the database connection."""
    try:
        connection = MySQLdb.connect(
            host=os.getenv("HOST"),
            user=os.getenv("USERNAME"),
            passwd=os.getenv("PASSWORD"),
            db=os.getenv("DATABASE"),
            charset="utf8mb4",
            autocommit=True,
            ssl_mode="VERIFY_IDENTITY",
            ssl={"ca": "/etc/ssl/cert.pem"},
        )
        print
        return connection
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Database Connection Error")

def handle_db_exception(e: HTTPException):
    """Handle database related exceptions."""
    app.exception_handler(HTTPException)(lambda request, exc: e)

# Helper function to format data in an enveloped response under root element "data"
async def execute_read_query(query: str, params: Optional[List[Any]] = None) -> List[Dict[str, Any]]:
    """Execute a read query and fetch the data."""
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        columns = [desc[0] for desc in cursor.description]
        data = [dict(zip(columns, row)) for row in cursor.fetchall()]
        cursor.close()
        return data
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Database Query Error")
```

## **Step 5: Define the Data Models**

In **`app/models.py`**, define the Pydantic models to validate the input data for CRUD operations.

```python
from pydantic import BaseModel
from typing import List, Dict, Any, Optional

### Pydantic SQL models to validate input
# Model to validate create doa level input with required fields
class DoaLevelsInput(BaseModel):
    custom_id: str
    preferred_name: str
    role: str

# Model to validate update doa level input with all fields optional
class DoaLevelsUpdate(BaseModel):
    id: int
    custom_id: Optional[str]
    preferred_name: Optional[str]
    role: Optional[str]

# Model to validate delete doa level input with required id field
class DoaLevelDelete(BaseModel):
    id: int
```

## **Step 6: Implement CRUD Operations**

In **`app/crud_operations.py`**, create the router and implement CRUD operations.

```python
# app/crud_operations.py
from fastapi import APIRouter, HTTPException, FastAPI
from app.database import setup_database_connection, execute_read_query

router = APIRouter()
connection = setup_database_connection() # Connect to database

### FastAPI app setup and routes
app: FastAPI = FastAPI()

@app.get("/", response_model=Dict[str, str])  # Get root
async def root() -> Dict[str, str]:
    try:
        return {"message": "REST API with Azure Functions works ❤️"}
    except HTTPException as e:
        handle_db_exception(e)

@app.get("/doa_levels", response_model=Dict[str, List[Dict[str, Any]]])  # Get DOA levels
async def get_doa_levels(preferred_name: str) -> Dict[str, List[Dict[str, Any]]]:
    query = "SELECT * FROM doa_levels WHERE preferred_name LIKE %s"
    params = ["%" + preferred_name + "%"]
    try:
        doa_levels_data = await execute_read_query(query, params)
        return {"data": doa_levels_data}
    except HTTPException as e:
        handle_db_exception(e)

@app.post("/doa_levels", response_model=Dict[str, Any])  # Create DOA level
async def create_doa_level(doa_level: DoaLevelsInput) -> Dict[str, Any]:
    todays_date = datetime.today().strftime('%Y-%m-%d')
    query = "INSERT INTO doa_levels (custom_id, preferred_name, role, as_of_date) VALUES (%s, %s, %s, %s)"
    params = [doa_level.custom_id, doa_level.preferred_name, doa_level.role, todays_date]
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        connection.commit()
        cursor.close()
        record_id = cursor.lastrowid
        return {"message": "DOA level successfully created", "created_record_id": record_id}
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Failed to create DOA level. Please check your input and try again.")

@app.put("/doa_levels", response_model=Dict[str, Any])  # Update DOA level
async def update_doa_level(doa_level: DoaLevelsUpdate) -> Dict[str, Any]:
    query = "UPDATE doa_levels SET custom_id = %s, preferred_name = %s, role = %s WHERE id = %s"
    params = [doa_level.custom_id, doa_level.preferred_name, doa_level.role, doa_level.id]
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        connection.commit()
        cursor.close()
        return {"message": f"DOA level with id {doa_level.id} successfully updated"}
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Failed to update DOA level. Please check your input and try again.")

@app.delete("/doa_levels", response_model=Dict[str, str])  # Delete DOA level
async def delete_doa_level(doa_level: DoaLevelDelete) -> Dict[str, str]:
    query = "DELETE FROM doa_levels WHERE id = %s"
    params = [doa_level.id]
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        connection.commit()
        cursor.close()
        return {"message": f"DOA level with id {doa_level.id} successfully deleted"}
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Failed to delete DOA level. Please check the ID and try again.")
```

## **Step 7: Deploy and Test the APIs**

Start the FastAPI server using **`uvicorn`**:

```css
uvicorn main:app --reload --port 80
```

Additionally, start ngrok to expose these API endpoints on the larger internet

```bash
ngrok http 80
```

You can now test the API using tools like **`curl`**, Postman, or your favorite web browser.

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%205.png)

## Step 8: Build in Creator Studio

You have finished the heavy lifting, and are ready to see your use case in Creator Studio within 5 minutes!

### Step 8a) Create a new use case

Use Queries workspace to implement DOA Lookups, and Paths workspace to create / update / delete DOA records.

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%206.png)

### Step 8b) Provide a name and description

The way you describe your use case affects how utterances to trigger your use case are generated, and the way your use case is rendered to your bot users

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%207.png)

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%208.png)

### Step 8c) Create a Connector for your API

Configure the base url of your API endpoint along with any authentication method you setup.

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%209.png)

### Step 8d) Configure your API endpoint

You will configure the relevant details of the following API endpoint

********************************GET DOA Level (by matching Preferred Name)********************************

```bash
curl --location 'https://pup-one-informally.ngrok-free.app \
      /doa_levels \
      ?preferred_name={{query}}'
```

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%2010.png)

![Aug-07-2023 18-43-19.gif](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Aug-07-2023_18-43-19.gif)

### Step 8e) Design your chat card (by mapping your API response)

By specifying which fields of the API response are relevant, we automatically render a chat card that renders this essential information automatically.

We will be mapping the following fields:

1. **Root Element**: `data`
2. ********************Identifier********************: `preferred_name`
3. **********************Description**********************: `role`
4. **********************************Additional Fields**********************************
    1. ID for Custom Role: custom_id
    2. DOA Level is Valid Until: as_of_date
5. ******************************Followup Action******************************
    1. Action Name: View Details
    2. URL: [`https://pup-one-informally.ngrok-free.app/docs`](https://pup-one-informally.ngrok-free.app/docs)

![Aug-07-2023 18-47-32.gif](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Aug-07-2023_18-47-32.gif)

### Step 8f) Review and edit how your use case will trigger

Using generative AI and the various features described through configuration (use case label and short description, API configuration, example values, and mapped JSON fields above) we can build a custom intent corresponding to all the ways a user might ask about our data. This is presented in the example utterances below. Feel free to modify the example utterances until they match how we estimate users might ask about our data.

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%2011.png)

### Step 8g) Launch to target user group

View our [launch management](https://developer.moveworks.com/creator-studio/launch-options/) documentation to launch our use case to the correct target group

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%2012.png)

## Step 9: Test in Bot

Ask about your resource (DOA Levels) as a user might ask, and access your data within 10 seconds!

<aside>
✋ Note: it takes up to 2 minutes to publish a use case inside the bot. Your use case might fail to render as expected if you ask immediately

</aside>

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%2013.png)

# **Conclusion**

Congratulations! You've successfully created a REST API for performing CRUD database operations, and created a complete chat experience over the course of this guide. Feel free to expand on this foundation to include additional features and handle more complex data scenarios. Happy coding!

# Appendix

## 1) Reference `main.py` script

```python
### Standard library imports
import os
from datetime import datetime

### Third party imports
import MySQLdb
from dotenv import load_dotenv
from fastapi import FastAPI, HTTPException
from typing import List, Dict, Any, Optional
from pydantic import BaseModel

### Load environment variables
load_dotenv()

### Database setup and utilities
def setup_database_connection() -> MySQLdb.Connection:
    """Set up and return the database connection."""
    try:
        connection = MySQLdb.connect(
            host=os.getenv("HOST"),
            user=os.getenv("USERNAME"),
            passwd=os.getenv("PASSWORD"),
            db=os.getenv("DATABASE"),
            charset="utf8mb4",
            autocommit=True,
            ssl_mode="VERIFY_IDENTITY",
            ssl={"ca": "/etc/ssl/cert.pem"}
        )
        print
        return connection
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Database Connection Error")

def handle_db_exception(e: HTTPException):
    """Handle database related exceptions."""
    app.exception_handler(HTTPException)(lambda request, exc: e)

connection = setup_database_connection()

### Helper function to format data in an enveloped response under root element "data"
async def execute_read_query(query: str, params: Optional[List[Any]] = None) -> List[Dict[str, Any]]:
    """Execute a read query and fetch the data."""
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        columns = [desc[0] for desc in cursor.description]
        data = [dict(zip(columns, row)) for row in cursor.fetchall()]
        cursor.close()
        return data
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Database Query Error")

### Pydantic SQL models to validate input
# Model to validate create doa level input with required fields
class DoaLevelsInput(BaseModel):
    custom_id: str
    preferred_name: str
    role: str

# Model to validate update doa level input with all fields optional
class DoaLevelsUpdate(BaseModel):
    id: int
    custom_id: Optional[str]
    preferred_name: Optional[str]
    role: Optional[str]

# Model to validate delete doa level input with required id field
class DoaLevelDelete(BaseModel):
    id: int

### FastAPI app setup and routes
app: FastAPI = FastAPI()

@app.get("/", response_model=Dict[str, str])  # Get root
async def root() -> Dict[str, str]:
    try:
        return {"message": "REST API with Azure Functions works ❤️"}
    except HTTPException as e:
        handle_db_exception(e)

@app.get("/doa_levels", response_model=Dict[str, List[Dict[str, Any]]])  # Get DOA levels
async def get_doa_levels(preferred_name: str) -> Dict[str, List[Dict[str, Any]]]:
    query = "SELECT * FROM doa_levels WHERE preferred_name LIKE %s"
    params = ["%" + preferred_name + "%"]
    try:
        doa_levels_data = await execute_read_query(query, params)
        return {"data": doa_levels_data}
    except HTTPException as e:
        handle_db_exception(e)

@app.post("/doa_levels", response_model=Dict[str, Any])  # Create DOA level
async def create_doa_level(doa_level: DoaLevelsInput) -> Dict[str, Any]:
    todays_date = datetime.today().strftime('%Y-%m-%d')
    query = "INSERT INTO doa_levels (custom_id, preferred_name, role, as_of_date) VALUES (%s, %s, %s, %s)"
    params = [doa_level.custom_id, doa_level.preferred_name, doa_level.role, todays_date]
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        connection.commit()
        cursor.close()
        record_id = cursor.lastrowid
        return {"message": "DOA level successfully created", "created_record_id": record_id}
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Failed to create DOA level. Please check your input and try again.")

@app.put("/doa_levels", response_model=Dict[str, Any])  # Update DOA level
async def update_doa_level(doa_level: DoaLevelsUpdate) -> Dict[str, Any]:
    query = "UPDATE doa_levels SET custom_id = %s, preferred_name = %s, role = %s WHERE id = %s"
    params = [doa_level.custom_id, doa_level.preferred_name, doa_level.role, doa_level.id]
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        connection.commit()
        cursor.close()
        return {"message": f"DOA level with id {doa_level.id} successfully updated"}
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Failed to update DOA level. Please check your input and try again.")

@app.delete("/doa_levels", response_model=Dict[str, str])  # Delete DOA level
async def delete_doa_level(doa_level: DoaLevelDelete) -> Dict[str, str]:
    query = "DELETE FROM doa_levels WHERE id = %s"
    params = [doa_level.id]
    try:
        cursor: MySQLdb.cursors.Cursor = connection.cursor()
        cursor.execute(query, params)
        connection.commit()
        cursor.close()
        return {"message": f"DOA level with id {doa_level.id} successfully deleted"}
    except MySQLdb.Error:
        raise HTTPException(status_code=500, detail="Failed to delete DOA level. Please check the ID and try again.")
```

## 2) cURL commands for interacting with SQL Database

See details about the corresponding API examples in this guide at at [`https://pup-one-informally.ngrok-free.app/docs`](https://pup-one-informally.ngrok-free.app/docs#/)

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%204.png)

**************************Get DOA Level (by Preferred Name)**************************

```bash
curl --location 'https://pup-one-informally.ngrok-free.app/doa_levels?preferred_name=Walter'
```

**************************Create New DOA Level**************************

```bash
curl --location 'https://pup-one-informally.ngrok-free.app/doa_levels' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
    "custom_id": "ssrinivas",
    "preferred_name": "Sarthak Srinivas",
    "role": "New Role"
}'
```

**************************Edit Existing DOA Level (with `id`)**

```bash
curl --location --request PUT 'https://pup-one-informally.ngrok-free.app/doa_levels' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
    "id": 22,
    "custom_id": "ssrinivas",
    "preferred_name": "Sarthak Srinivas",
    "role": "Example JSR Role"
}'
```

**************************Delete Existing DOA Level (with `id`)**

```yaml
curl --location --request DELETE 'https://pup-one-informally.ngrok-free.app/doa_levels' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
    "id": 22
}'
```

![Untitled](Reading%20Writing%20from%20a%20SQL%20Database%20with%20Creator%20S%2050f08a8cdfdc44318ae25c7d94560589/Untitled%2014.png)