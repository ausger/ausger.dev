--
-- Table structure for table `sphinx_catalogsearch_fulltext`
--

CREATE TABLE `sphinx_catalogsearch_fulltext` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(6) NOT NULL COMMENT 'Store ID',
  `name` varchar(255) NOT NULL COMMENT 'Product Name',
  `name_attributes` text NOT NULL COMMENT 'Product Name + selected attributes',
  `category` varchar(255) DEFAULT NULL COMMENT 'Categories (with separator)',
  `data_index` text NOT NULL COMMENT 'Original Magento data_index',
  `sku` varchar(255) NOT NULL COMMENT 'SKU'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='sphinx_catalogsearch_fulltext';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sphinx_catalogsearch_fulltext`
--
ALTER TABLE `sphinx_catalogsearch_fulltext`
  ADD PRIMARY KEY (`product_id`,`store_id`),
  ADD FULLTEXT KEY `FTI_SPHINX_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`);



CREATE TABLE `sphinx_catalogsearch_fulltext_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(6) NOT NULL COMMENT 'Store ID',
  `name` varchar(255) NOT NULL COMMENT 'Product Name',
  `name_attributes` text NOT NULL COMMENT 'Product Name + selected attributes',
  `category` varchar(255) DEFAULT NULL COMMENT 'Categories (with separator)',
  `data_index` text NOT NULL COMMENT 'Original Magento data_index',
  `sku` varchar(255) NOT NULL COMMENT 'SKU'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='sphinx_catalogsearch_fulltext';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sphinx_catalogsearch_fulltext_tmp`
--
ALTER TABLE `sphinx_catalogsearch_fulltext_tmp`
  ADD PRIMARY KEY (`product_id`,`store_id`),
  ADD FULLTEXT KEY `FTI_SPHINX_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`);


-- after magento admin full index, if is not populate, manually run the following.
--  INSERT INTO sphinx_catalogsearch_fulltext
--  SELECT *
--  FROM sphinx_catalogsearch_fulltext_tmp