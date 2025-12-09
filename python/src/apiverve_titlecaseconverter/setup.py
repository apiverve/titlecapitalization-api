from setuptools import setup, find_packages

import os
lib_folder = os.path.dirname(os.path.realpath(__file__))
requirements_file = os.path.join(lib_folder, 'requirements.txt')
install_requires = ["requests >= 2.25.1", "setuptools >= 56.0.0"]
if os.path.exists(requirements_file):
    with open(requirements_file, 'r') as f:
        install_requires = f.read().splitlines()

setup(
    name='apiverve_titlecaseconverter',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=install_requires,
    description='Title Capitalization is a simple tool for converting title text to various cases. It returns the text converted to your desired case.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    project_urls={
        'Homepage': 'https://apiverve.com',
        'Documentation': 'https://docs.apiverve.com/ref/titlecapitalization',
        'Source': 'https://github.com/apiverve/titlecapitalization-api',
        'Bug Tracker': 'https://github.com/apiverve/titlecapitalization-api/issues'
    },
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)