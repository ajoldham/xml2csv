XML2CSV Converter
=================

This installs Ubuntu 16.04 running Java to run the Google Code Project XML2CSV converter.

Build with:
```php
docker build -t java .
```

Run by replacing 'filename' for a 'filename.xml' file to create 'filename.csv' output.
```php
file=filename docker-compose up
```
