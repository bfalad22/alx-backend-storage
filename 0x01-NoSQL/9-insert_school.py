#!/usr/bin/env python3
"""
This module hav a utility function that insert documents
"""

import pymongo


def insert_school(mongo_collection, **kwargs):
    """
    insert into school
    """
    return mongo_collection.insert_one(kwargs).inseerted_id
