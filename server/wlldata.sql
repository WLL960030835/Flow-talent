/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : wlldata

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 04/11/2020 00:21:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `uid_id` int(11) DEFAULT NULL COMMENT '商品id',
  `uid_images` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类商品id',
  `cid_id` int(11) DEFAULT NULL COMMENT '商品id',
  `cid_images` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (1, 2, '01—carousel.png');
INSERT INTO `classify` VALUES (2, 2, '02—carousel.png');

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品详情id',
  `pid_id` int(11) DEFAULT NULL COMMENT '商品id',
  `pid-images` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for homepage
-- ----------------------------
DROP TABLE IF EXISTS `homepage`;
CREATE TABLE `homepage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `spacify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `oldprice` decimal(10, 2) DEFAULT NULL,
  `sale_count` int(11) DEFAULT NULL,
  `classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sub_classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `store` int(11) DEFAULT NULL,
  `details` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `details_images` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `details_carousel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `index_images` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `index_carousel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cart` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cart_imaegs` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'id商品id唯一\r\nspacify商品规格\r\nsale_count销量\r\nclassify分类\r\nsub_classify副分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of homepage
-- ----------------------------
INSERT INTO `homepage` VALUES (1, ' 每日坚果恰恰混合坚果30包干果果仁小包装孕妇零食大礼包', '好零食 选良品 挑更好的不会错', 34.90, '150g*2袋', 79.90, 1200, '食品饮料', '热爆销款', '好吃，喜欢', 364, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (2, '混合小包装礼盒干果大礼包', '干湿分离 锁住新鲜 每日1小包 30天装', 37.00, '50g', 57.00, 89, '食品饮料', '零食', '好吃，喜欢', 712, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (3, '友臣正宗肉松饼整箱休闲早零食充饥夜宵特产糕点美食营养食品面包', NULL, 49.70, '150g', 89.70, 590, '食品饮料', '面包', '包装很好', 480, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (4, '修文鸭舌头酱鸭舌温州特产原味鸭舌鸭肉休闲零食大礼包称重500g', '领券下单更优惠 ', 23.70, '50g*2袋', 47.70, 12098, '食品饮料', '网红款', '性价比很高', 761, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (5, '来伊份天天每日坚果30包孕妇零食混合干果750g健康零食中秋节送礼', 'A股上市零食品牌 5.7亿人次选择购买 ', 25.90, '100g*2袋', 56.80, 459, '食品饮料', '肉食', '包装很好，喜欢', 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (6, '煌上煌酱鸭450g江西特产整只酱板鸭鸭肉卤味零食送礼大礼包', '三种口味 美味酱鸭任你选择', 19.90, '150g*2袋', 23.30, 380, '食品饮料', '肉食', '一般般', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (7, '一力米灰网红方头单鞋女粗跟2020新款百搭珍珠仙女风时尚浅口女鞋', NULL, 69.00, '\"[{color:\"黑色\",size:\"36\"},{color:\"白色\",size:\"37\"},{color:\"红色\",size:\"38\"}]\"', 89.00, 328, '鞋服配饰', '鞋子', '店家发货很速度，一天就到', 472, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (8, '软皮高跟鞋女2020年秋冬新款名媛法式少女不磨脚水钻细跟尖头单鞋', NULL, 99.90, '\"[{color:\"黑色\",size:\"36\"},{color:\"白色\",size:\"37\"},{color:\"红色\",size:\"38\"}]\"', 102.00, 41, '鞋服配饰', '女装', '宝贝收到了，卖家发货很快，物流也非常给力', 769, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (9, '港风套装女复古chic气质收腰风衣马甲打底裙御姐气质女神范两件套 ', '特惠版', 120.00, '\"[{color:\"黑色\",size:\"S\"},{color:\"白色\",size:\"M\"},{color:\"红色\",size:\"L\"}]\"', 237.00, 89, '鞋服配饰', '女装', '感觉质量还是比较好的', 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (10, 'xiaomi/小米note8pro手机小米红米手机', NULL, 899.00, '\"[{color:\"黑色\"},{color:\"红色\"},{color:\"白色\"}]\"', 1179.90, 50231, '手机电脑', '手机', '性价比很高', 472, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (11, '手机XS/MAX充电线器7p单头5s加长2米ipad快充', '原装正品 质保两年 高速传输 ', 28.80, '\"[{type:\"Apple\",length:\"1米\"},{type:\"华为\",length:\"1.5米\"},{type:\"小米\",length:\"2米\"}]\"', 48.80, 264, '数码周边', '数据线', '卖家服务真周到。以后带同事一起来。', 3590, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (12, '一拖三充电线伸缩三合一手机快充typec适用于苹果数据线安卓定制logo多功能多用收缩多口通用冲电车载usb车用 ', '【支持礼品定制】苹果安卓type-c通用3A快充 ', 19.90, '\"[{type:\"Apple\",length:\"1米\"},{type:\"华为\",length:\"1.5米\"},{type:\"小米\",length:\"2米\"}]\"', 27.60, 17, '数码周边', '数据线', '运送速度很快，很满意的一次购物', 4501, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (13, '自拍杆手机自拍杆耳机线链接无需充电华为原装正品 ', '无需充电 一键自拍 官方正品', 79.90, '送精品包装袋', 132.00, 430, '数码周边', '热销爆款', '真的是物超所值', 3701, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (14, 'Huawei/华为三脚架自拍杆自拍神器手机自拍杆蓝牙遥控通用型拍照 ', '可折叠口袋云台、一键横竖拍、控制原生相机', 43.00, '送精品包装袋', 68.00, 926, '数码周边', '热销爆款', '真的很bai喜欢，完全超出期望值', 8401, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (15, '正品亨丝1818拉线眉笔女防水防汗不脱色持久可剥初学者撕拉削眉粉', NULL, 9.90, '\"[{color:\"黑棕色\"},{color:\"黑色\"},{coloe:\"棕色\"}]\"', 19.90, 449, '美妆个护', '美妆', '上色效果很好 保持时间持久', 2490, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (16, '双头三角眉笔眉粉防汗防晕染持久多用初学', '双头三角眉笔，立体量色，双头双效精巧画眉', 19.90, '\"[{color:\"黑棕色\"},{color:\"黑色\"},{coloe:\"棕色\"}]\"', 23.50, 310, '美妆个护', '美妆', '不错哦，跟我在实体专营店买的一样，很上色', 1598, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (17, '日本KATE/凯朵三色眉粉眉刷自然立体防水防汗持久不晕染易上色', '日本品牌 菜鸟郑州保税4号仓发货', 23.50, '\"[{color:\"黑棕色\"},{color:\"黑色\"},{coloe:\"棕色\"}]\"', 48.70, 593, '美妆个护', '美妆', '上色效果很好 保持时间持久', 3601, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (18, '雅诗兰黛红石榴套装 高光水+面霜+晚霜 补水保湿', '昼夜亮采 水润满格 鲜活好气色', 98.90, '常规款', 108.00, 10097, '美妆个护', '女士护肤', '保持时间持久', 1590, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (19, 'freeplus芙丽芳丝洗面霜保湿修护清爽化妆水乳液洗面奶套装男女 ', '星品套装 不参加店铺449满赠 ', 37.70, '送小样', 59.90, 497, '美妆个护', '洗护沐', '不错，包装还可以，下次需要再来', 374, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (20, '擦玻璃神器家用搽玻璃刮子伸缩杆清洗擦窗器清洁工具刮水器地刮刀', '35CM刮水器 清洁玻璃 地面刮水均可以使用', 56.90, '常规款', 78.50, 174, '生活用品', '清洁用品', '质量好，以后还来你家买', 1762, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (21, '电饭煲家用3L迷你小型蒸饭锅2人智能多功能1官方旗舰店正品', '预约定时 智能感温系统 不粘内胆 ', 138.00, '\"[{color:\"黑色\"},{color:\"白色\"},{coloe:\"灰色\"}]\"', 291.00, 390, '生活电器', '热销爆款', '性价比很高', 2560, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (22, '假花仿真玫瑰花客厅装饰摆设餐桌花摆花塑料花束干花摆件花艺用品', NULL, 19.90, '一件', 39.90, 364, '生活用品', '热销爆款', '非常难得的正品，网购以来最中意的了。', 2876, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (23, '高档仿真玉兰花单支假花客厅茶几花艺小摆件插花装饰品塑料花盆栽 ', NULL, 9.90, '买一送一', 65.80, 179, '生活用品', '热销爆款', '宝贝不错发货非常快', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (24, 'RADO/雷达真系列灰盘陶瓷表带男士机械腕表—R2', '瑞士品牌', 189.90, '常规', 308.00, 736, '生活电器', '热销爆款', '性价比很高', 790, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (25, '秋冬套头百搭短款上衣长袖紧身线衣内搭修身针织半高领打底毛衣女 ', NULL, 89.90, '\"[{color:\"黑色\",size:\"S\"},{color:\"白色\",size:\"M\"},{color:\"红色\",size:\"L\"}]\"', 149.00, 165, '鞋服配饰', '女装', '与卖家描述的完全一致，非常bai满意', 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (26, '都市丽人女士睡衣法兰绒长袖保暖套装睡衣家居DSH068', NULL, 33.60, '\"[{color:\"黑色\",size:\"S\"},{color:\"白色\",size:\"M\"},{color:\"红色\",size:\"L\"}]\"', 59.90, 187, '鞋服配饰', '女装', '宝贝收到了，卖家发货很快，物流也非常给力', 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (27, '香氛沐浴露花木持久留香家庭大容量沐浴乳', '满减', 59.90, '送小样沐浴乳', 79.90, 193, '美妆个护', '洗护沐', '不错，包装还可以，下次需要再来', 340, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (28, '玉泽皮肤屏障修护沐浴露280ml氨基酸国货沐浴乳女补水保湿家庭装', '氨基酸温和沐浴 泡沫丰富细腻 正品保证', 19.80, '送小样沐浴乳', 59.20, 487, '美妆个护', '洗护沐', '不错，包装还可以，下次需要再来', 1276, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (29, '氨基酸温和沐浴露泡沫丰富细腻 正品保障', '真实花瓣 鲜花护肤 浴后留香', 76.50, '常规款', 98.00, 620, '美妆个护', '洗护沐', '不错，包装还可以，下次需要再来', 437, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (30, '微型月季大花苗四季带花苞花卉观花绿植物室内外庭院阳台盆栽', '加湿 美观 趣味', 9.80, '买一送一', 23.90, 52, '生活用品', '热销爆款', '非常好的卖家，绝对支持', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (31, '2020年冬季新款女士时尚休闲鞋H92W0496', '经典卡通 时尚趣味', 65.90, '\"[{color:\"黑色\",size:\"36\"},{color:\"白色\",size:\"37\"},{color:\"红色\",size:\"38\"}]\"', 79.50, 76, '鞋服配饰', '鞋子', '商品质量也相当bai不错。太喜du欢了，谢谢', 3200, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (32, 'Skechers斯凯奇秋冬GOWALK舒适缓震健步鞋休闲绑带运动鞋子 男', '缓震健步鞋，满足休闲搭配', 149.00, '\"[{color:\"黑色\",size:\"39\"},{color:\"白色\",size:\"40\"},{color:\"灰色\",size:\"41\"}]\"', 234.00, 386, '鞋服配饰', '鞋子', '好卖家，真有耐心，我终于bai买到想要的东西了', 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (33, '网红女款高档创意个性防摔30pro卡通硅胶保护套', '【关注店铺+收藏商品+加入购物车】优先发货', 9.90, '\"[{color:\"红色\"},{color:\"白色\"},{color:\"绿色\"}]\"', 19.90, 5738, '数码周边', '热销爆款', '宝贝质量不错，很喜欢了。谢谢掌柜', 654, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (34, 'Apple 苹果原装手机壳 iPhone 12/12 Pro硅胶外壳MagSafe 手机壳', '硅胶材质，丝感柔滑，内置磁体，轻松定位', 12.80, '\"[{color:\"红色\"},{color:\"白色\"},{color:\"绿色\"}]\"', 38.70, 904, '数码周边', '热销爆款', '商品质量也相当bai不错', 529, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (35, '装浴室漏水拖鞋女夏天居家用室内防滑速干洗澡镂空家居凉拖鞋', '浴室防滑 速干镂空设计', 5.90, '均码', 10.50, 2859, '鞋服配饰', '鞋子', '收到货，第一时间拆包装，感觉质量还是比较好的', 580, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (36, 'THEBEAST野兽派家居花草香薰精油散香器结婚香氛装饰新婚生日礼物', '清新空气支持睡眠，新婚生日送礼 ', 23.60, '送香薰液体(50ml)', 49.90, 2846, '生活用品', '热销爆款', '东西收到了，非常好哦，非常喜爱，赞个', 12009, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (37, '美国RevoMax锐虎保温杯便携不锈钢创意一秒男女运动健身户外水杯', '', 128.80, '\"[{color:\"黑色\"},{color:\"蓝色\"},{color:\"白色\"}]\"', 249.00, 1003, '生活用品', '水杯', '老客户了啊，希望以后有更多好东东\r\n\r\n', 347, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (38, 'bumu智能保温杯大容量女刻字水杯子创意便携个性定制潮流男士高档', '智能提醒喝水 软萌治愈色 温度提示灯', 89.70, '\"[{color:\"黑色\"},{color:\"蓝色\"},{color:\"白色\"}]\"', 179.90, 28475, '生活用品', '水杯', '东西还\r\n\r\nok', 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (39, '塑料刷牙杯子口杯洗漱杯情侣简约小麦秸秆水杯家用刷牙杯漱嘴纯色', '创意简约 破损不要钱', 7.70, '\"[{color:\"绿色\"},{color:\"蓝色\"},{color:\"白色\"}]\"', 9.90, 27458, '生活用品', '水杯', '还不错\r\n\r\n.\r\n\r\n质量挺好的\r\n\r\n.\r\n\r\n速度也快', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (40, '创意简约水杯 破损不要钱', '双层设计，光滑内壁，不结垢，易清洗', 9.60, '\"[{color:\"绿色\"},{color:\"蓝色\"},{color:\"白色\"}]\"', 18.70, 375, '生活用品', '水杯', '物有所值', 457, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (41, '塑料脸盆家用大号加厚婴儿小面洗衣衣服盆学生宿舍洗脸盆子洗脚盆', '料足厚实 防滑盆底 一物多用', 5.60, '\"[{size:\"大号\"},{size:\"中号\"},{size:\"小号\"}]\"', 8.70, 7583, '生活用品', '热销爆款', '物有所值', 963, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (42, '塑料水盆洗脸盆子', NULL, 5.70, '\"[{size:\"大号\"},{size:\"中号\"},{size:\"小号\"}]\"', 9.20, 7485, '生活用品', '热销爆款', '还不错\r\n\r\n.\r\n\r\n质量挺好的\r\n\r\n.\r\n\r\n速度也快', 374, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (43, '洗发水露500ml+护500ml+三分钟奇迹护70ml', '产品处于新旧升级过程中，新旧产品随机发送', 23.60, '送同款小样', 49.90, 208, '美妆个护', '洗护沐', '不错，下次需要再来不错，', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (44, '生姜洗发水防脱生发去屑止痒控油持久留香洗生发膏露增发密发男女', '植物防脱去屑洗发水', 54.50, '送同款小样', 76.80, 10, '美妆个护', '洗护沐', '质量很好，喜欢', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (45, '卡诗滋养润护洗发水2号柔顺改善毛躁分叉修护干枯', '滋养干枯秀发', 38.00, '送同款小样', 59.90, 2845, '美妆个护', '洗护沐', '用着可以', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (46, '早餐小零食满减', '好零食 选良品 挑更好的不会错 ', 19.80, '50g*2', 23.50, 2475, '食品饮料', '热销爆款', '失望', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (47, '好多肉肉大礼包礼盒500g 网红零食小吃 休闲食品熟食', '6款鸭肉零食 休闲大礼包 真空小包装', 23.70, '一包', 53.20, 964, '食品饮料', '肉食', '味道很一般', 459, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (48, '科克兰无盐混合每日坚果干果休闲零食小吃', '4种坚果混合 无盐更健康 包税 送礼', 47.90, '一包', 65.80, 2846, '食品饮料', '坚果', '好吃，喜欢', 1200, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (49, '3条大毛巾纯棉 洗脸洗澡家用成人男女帕全棉柔软吸水不掉毛', '纯棉材质，两条/三条装大毛巾 不同价格选择', 5.20, '买一条送一条', 7.90, 485, '生活用品', '热销爆款', '物有所值', 391, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `homepage` VALUES (50, '凡茜白茶卸妆油正品卸妆水女脸部温和深层清洁毛孔无刺激卸妆乳液', '快卸妆 无残留 温和不油腻 眼部唇部可卸', 40.90, '送小样', 49.90, 3756, '美妆个护', '女士护肤', '用着可以', 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for indexcarouselimg
-- ----------------------------
DROP TABLE IF EXISTS `indexcarouselimg`;
CREATE TABLE `indexcarouselimg`  (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nid_id` int(11) DEFAULT NULL COMMENT '商品id',
  `index_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of indexcarouselimg
-- ----------------------------
INSERT INTO `indexcarouselimg` VALUES (1, 29, '01—carousel.png');
INSERT INTO `indexcarouselimg` VALUES (2, 13, '02—carousel.png');
INSERT INTO `indexcarouselimg` VALUES (3, 2, '03—carousel.png');
INSERT INTO `indexcarouselimg` VALUES (4, 23, '04—carousel.png');
INSERT INTO `indexcarouselimg` VALUES (5, 27, '05—carousel.png');

-- ----------------------------
-- Table structure for usersmessage
-- ----------------------------
DROP TABLE IF EXISTS `usersmessage`;
CREATE TABLE `usersmessage`  (
  `nid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '作者ID,主键且自增',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名,唯一',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码,MD5',
  `nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usersmessage
-- ----------------------------
INSERT INTO `usersmessage` VALUES (1, 'Richard', 'c51c8bbd9e8c8bc49042ccd5d3e9864d', '黑色纯牛M奶', NULL);
INSERT INTO `usersmessage` VALUES (2, 'Johnny', 'd0f59baadadd3349e4a9b2674bcceae8', '风之谷z', NULL);
INSERT INTO `usersmessage` VALUES (3, 'Martin', '81d6f316d169150d0e8733866c38684d', '庚方丽理', NULL);
INSERT INTO `usersmessage` VALUES (4, 'Christina', '92109e2189cd79072b7df39317d94fa1', '阐炜辉', NULL);
INSERT INTO `usersmessage` VALUES (5, 'Margaret', '0513a3da7ff53b1aeb42245ebcc5a16e', '伯启根', NULL);
INSERT INTO `usersmessage` VALUES (6, 'Barbara', '5c39b18d77d5f297ff92e4942e5522b5', '旅行泡沫', NULL);
INSERT INTO `usersmessage` VALUES (7, 'Diana', '93b63feb993716772ef3b15b08b8e8a8', '燕雨y传', NULL);
INSERT INTO `usersmessage` VALUES (8, 'Melody', 'ce2f3a5579d231b3b8f8b9e5fc46d361', '稀稀哩哩', NULL);
INSERT INTO `usersmessage` VALUES (9, 'Debbie', '28527cdbcc65c696f11897327cb9a6bb', '最爱Kitty', NULL);
INSERT INTO `usersmessage` VALUES (10, 'Scott', 'bc28af6f750004729474ccbb403bd0ee', '游客学者麦', NULL);
INSERT INTO `usersmessage` VALUES (11, 'Shelly', 'f7ba507db5b5b1150eabf5707f0334dd', '天街小雨', NULL);
INSERT INTO `usersmessage` VALUES (12, 'Bob', '2fc1c0beb992cd7096975cfebf9d5c3b', '浮云不说话', NULL);
INSERT INTO `usersmessage` VALUES (13, 'Amanda', '9d910c8bf395fce35216f0f4fa85432e', '左耳似水正', NULL);
INSERT INTO `usersmessage` VALUES (14, 'George', '578ad8e10dc4edb52ff2bd4ec9bc93a3', '吃草莓要吐籽', NULL);
INSERT INTO `usersmessage` VALUES (15, 'Benjamin', '861a744bccc0da5432f097d5838e4b83', '没表有时间', NULL);

SET FOREIGN_KEY_CHECKS = 1;
