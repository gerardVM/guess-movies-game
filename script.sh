#!/bin/bash
order=0
for url in $(cat list.txt); do
    order=$((order+1))
    sed "s|insert-url|$url|g" < template.htm > ./sites/scene$order.html
    sed -i "s|heading|$order Scene|g" ./sites/scene$order.html
done