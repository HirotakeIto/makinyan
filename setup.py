#!-*-coding:utf-8-*-
from __future__ import absolute_import
from __future__ import unicode_literals
import os
from setuptools import setup,find_packages

#Get Readme
try:
    with open( 'README.rst' ) as f:
        readme = f.read()
except IOError:
    readme = ''


def _get_requirements( filename ):
    """
    Get all information of pre install required modules
    """
    return open(filename).read().splitlines()


pwd = os.path.dirname(os.path.abspath(__file__))
version = '1.0.0'

setup(
  name='makinyan',
  version='version'
)
