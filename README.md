# Log Archive Tool

## 📌 Overview

A simple CLI tool to archive logs by compressing them into `.tar.gz` files with timestamps.

## 🚀 Features

* Accepts log directory as input
* Compresses logs into `.tar.gz`
* Stores archives in a separate folder
* Maintains archive history in a log file

## 🛠️ Usage

```bash
./log-archive.sh /var/log
```

## 📂 Output

* Compressed logs stored in:

  ```
  archive_logs/
  ```
* Log history stored in:

  ```
  archive.log
  ```

## 🧾 Example Output

```
Archive created: logs_archive_20260407_213045.tar.gz
```

## ⏰ Optional: Schedule with Cron

```bash
crontab -e
```

Example:

```
0 2 * * * /path/to/log-archive.sh /var/log
```

## 📎 GitHub Repository
(https://github.com/ManojKumar-Devops/log-archive-tool)

🌐 Project Page

https://roadmap.sh/projects/log-archive-tool

## 📈 Future Improvements

* Add retention policy
* Upload archives to AWS S3
* Add error logging
* Convert to Python CLI tool

