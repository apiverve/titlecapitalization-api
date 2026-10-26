from setuptools import setup, find_packages

setup(
    name='apiverve_titlecaseconverter',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Title Case Converter formats text strings into specific editorial style guidelines and capitalization standards. Send raw headline text and a chosen rule set like APA, Chicago, or AP to receive properly capitalized copy.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/titlecapitalization?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
