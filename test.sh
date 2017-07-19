#!/usr/bin/env bash

varible="fdsafdsa.123"
echo ${varible%%.*}


varible2="12345${varible%%.*}67890qwertyuiopasdfghjklzxcvbnm"
echo $varible2