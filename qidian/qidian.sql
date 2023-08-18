/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : qidian

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 17/08/2023 18:03:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 女生月票榜
-- ----------------------------
DROP TABLE IF EXISTS `女生月票榜`;
CREATE TABLE `女生月票榜`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hot` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 女生月票榜
-- ----------------------------
INSERT INTO `女生月票榜` VALUES (1, '退下，让朕来', '玄幻言情', 3828);
INSERT INTO `女生月票榜` VALUES (2, '魏晋干饭人', '古代言情', 2636);
INSERT INTO `女生月票榜` VALUES (3, '宋檀记事', '现代言情', 2515);
INSERT INTO `女生月票榜` VALUES (4, '我在星际重著山海经', '科幻空间', 1911);
INSERT INTO `女生月票榜` VALUES (5, '洛九针', '古代言情', 1697);
INSERT INTO `女生月票榜` VALUES (6, '御兽从零分开始', '玄幻言情', 1553);
INSERT INTO `女生月票榜` VALUES (7, '我把全修真界卷哭了', '仙侠奇缘', 1364);
INSERT INTO `女生月票榜` VALUES (8, '长安好', '古代言情', 1309);
INSERT INTO `女生月票榜` VALUES (9, '大小姐她总是不求上进', '古代言情', 972);
INSERT INTO `女生月票榜` VALUES (10, '咸鱼一家的穿书生活', '古代言情', 847);
INSERT INTO `女生月票榜` VALUES (11, '重生年代：炮灰长姐带妹逆袭', '现代言情', 841);
INSERT INTO `女生月票榜` VALUES (12, '仙子不想理你', '仙侠奇缘', 703);
INSERT INTO `女生月票榜` VALUES (13, '红楼之谁也不能打扰我的退休生活', '古代言情', 671);
INSERT INTO `女生月票榜` VALUES (14, '快穿之炮灰她选择种田', '科幻空间', 655);
INSERT INTO `女生月票榜` VALUES (15, '末日乐园', '科幻空间', 654);
INSERT INTO `女生月票榜` VALUES (16, '辞金枝', '古代言情', 632);
INSERT INTO `女生月票榜` VALUES (17, '开局就被赶出豪门', '现代言情', 597);
INSERT INTO `女生月票榜` VALUES (18, '我家仙子多有病', '仙侠奇缘', 552);
INSERT INTO `女生月票榜` VALUES (19, '吾家阿囡', '古代言情', 545);
INSERT INTO `女生月票榜` VALUES (20, '极光之意', '现代言情', 535);
INSERT INTO `女生月票榜` VALUES (21, '快穿：变美后，我赢麻了', '古代言情', 524);
INSERT INTO `女生月票榜` VALUES (22, '燕辞归', '古代言情', 519);
INSERT INTO `女生月票榜` VALUES (23, '我家直播间通古今', '古代言情', 504);
INSERT INTO `女生月票榜` VALUES (24, '穿越星际妻荣夫贵', '科幻空间', 498);
INSERT INTO `女生月票榜` VALUES (25, '咸鱼贾环的诸天旅行', '玄幻言情', 486);
INSERT INTO `女生月票榜` VALUES (26, '登堂入室', '古代言情', 454);
INSERT INTO `女生月票榜` VALUES (27, '吃瓜贵妃的自我修养', '古代言情', 439);
INSERT INTO `女生月票榜` VALUES (28, '寒门大俗人', '古代言情', 437);
INSERT INTO `女生月票榜` VALUES (29, '重生星际喵喵喵', '科幻空间', 430);
INSERT INTO `女生月票榜` VALUES (30, '男主发疯后', '古代言情', 417);
INSERT INTO `女生月票榜` VALUES (31, '被渣重生后我在修仙界内卷成第一', '仙侠奇缘', 393);
INSERT INTO `女生月票榜` VALUES (32, '我在仙侠世界被祖国征召了', '仙侠奇缘', 358);
INSERT INTO `女生月票榜` VALUES (33, '娱乐圈大清醒', '现代言情', 358);
INSERT INTO `女生月票榜` VALUES (34, '她是剑修', '仙侠奇缘', 348);
INSERT INTO `女生月票榜` VALUES (35, '快穿开启锦鲤运', '科幻空间', 338);
INSERT INTO `女生月票榜` VALUES (36, '宫斗？我无限读档，气哭皇帝', '古代言情', 336);
INSERT INTO `女生月票榜` VALUES (37, '我在仙界富甲一方', '仙侠奇缘', 328);
INSERT INTO `女生月票榜` VALUES (38, '一纸千金', '古代言情', 312);
INSERT INTO `女生月票榜` VALUES (39, '香归', '古代言情', 290);
INSERT INTO `女生月票榜` VALUES (40, '全位面都跪求反派女主做个人', '科幻空间', 289);
INSERT INTO `女生月票榜` VALUES (41, '昭仙辞', '玄幻言情', 278);
INSERT INTO `女生月票榜` VALUES (42, '直播vlog全家穿越给始皇种田', '古代言情', 268);
INSERT INTO `女生月票榜` VALUES (43, '大雍女提刑', '古代言情', 258);
INSERT INTO `女生月票榜` VALUES (44, '末世大佬问鼎娱乐圈', '现代言情', 253);
INSERT INTO `女生月票榜` VALUES (45, '快穿：疯批美人不肯当炮灰怎么办', '科幻空间', 249);
INSERT INTO `女生月票榜` VALUES (46, '直播讨债，一个关注全网吓哭！', '现代言情', 246);
INSERT INTO `女生月票榜` VALUES (47, '花千变', '古代言情', 244);
INSERT INTO `女生月票榜` VALUES (48, '我靠捡垃圾成了炼丹大佬', '玄幻言情', 214);
INSERT INTO `女生月票榜` VALUES (49, '满级大佬在星际下岗再就业', '科幻空间', 210);
INSERT INTO `女生月票榜` VALUES (50, '当病弱少女掌握异兽分身', '玄幻言情', 209);
INSERT INTO `女生月票榜` VALUES (51, '捡了福星闺女后，全村都旺了', '古代言情', 209);
INSERT INTO `女生月票榜` VALUES (52, '别闹，薄先生！', '现代言情', 202);
INSERT INTO `女生月票榜` VALUES (53, '我在聊斋修功德', '仙侠奇缘', 201);
INSERT INTO `女生月票榜` VALUES (54, '请用你的多巴胺送我回家', '科幻空间', 199);
INSERT INTO `女生月票榜` VALUES (55, '我在古代靠抄家发家致富', '古代言情', 196);
INSERT INTO `女生月票榜` VALUES (56, '我在诡秘世界封神', '悬疑推理', 196);
INSERT INTO `女生月票榜` VALUES (57, '尽欢颜', '古代言情', 190);
INSERT INTO `女生月票榜` VALUES (58, '将军，夫人喊你种田了', '古代言情', 186);
INSERT INTO `女生月票榜` VALUES (59, '老娘的大唐岂容尔等染指', '古代言情', 183);
INSERT INTO `女生月票榜` VALUES (60, '快穿之位面养成记2', '科幻空间', 183);
INSERT INTO `女生月票榜` VALUES (61, '大宋一把刀', '古代言情', 183);
INSERT INTO `女生月票榜` VALUES (62, '我辈女修当自强', '仙侠奇缘', 183);
INSERT INTO `女生月票榜` VALUES (63, '退婚后，她下乡被糙汉掐腰猛宠', '现代言情', 182);
INSERT INTO `女生月票榜` VALUES (64, '农家小福女', '古代言情', 182);
INSERT INTO `女生月票榜` VALUES (65, '斗罗：有个链爱想跟你谈谈', '玄幻言情', 178);
INSERT INTO `女生月票榜` VALUES (66, '重回高考前，我在科学圈火爆了', '现代言情', 175);
INSERT INTO `女生月票榜` VALUES (67, '驭君', '古代言情', 173);
INSERT INTO `女生月票榜` VALUES (68, '港娱：顶流从大文豪开始', '现代言情', 172);
INSERT INTO `女生月票榜` VALUES (69, '国子监小厨娘', '古代言情', 171);
INSERT INTO `女生月票榜` VALUES (70, '穿到远古部落种田搞基建', '玄幻言情', 171);
INSERT INTO `女生月票榜` VALUES (71, '摊牌了，京圈权臣都是我的学生！', '古代言情', 168);
INSERT INTO `女生月票榜` VALUES (72, '花醉满堂', '古代言情', 164);
INSERT INTO `女生月票榜` VALUES (73, '我全家在种田文里打卡求生', '古代言情', 161);
INSERT INTO `女生月票榜` VALUES (74, '历史直播：开局为秦始皇直播亡国', '轻小说', 160);
INSERT INTO `女生月票榜` VALUES (75, '穿书九零，大佬的炮灰前妻觉醒了', '现代言情', 160);
INSERT INTO `女生月票榜` VALUES (76, '暴富全星际从种菜开始', '科幻空间', 159);
INSERT INTO `女生月票榜` VALUES (77, '都别打扰我种地', '仙侠奇缘', 159);
INSERT INTO `女生月票榜` VALUES (78, '快穿世界吃瓜第一线', '现代言情', 158);
INSERT INTO `女生月票榜` VALUES (79, '穿越八零一身恶名', '现代言情', 157);
INSERT INTO `女生月票榜` VALUES (80, '全网黑后我考研清华爆红了', '现代言情', 157);
INSERT INTO `女生月票榜` VALUES (81, '说好一起种地，你却偷偷去御兽？', '科幻空间', 156);
INSERT INTO `女生月票榜` VALUES (82, '我在诸天当奶爸', '科幻空间', 156);
INSERT INTO `女生月票榜` VALUES (83, '大晋女匠师', '古代言情', 156);
INSERT INTO `女生月票榜` VALUES (84, '夫人被迫觅王侯', '古代言情', 156);
INSERT INTO `女生月票榜` VALUES (85, '满级归来：那个病秧子我罩了', '现代言情', 155);
INSERT INTO `女生月票榜` VALUES (86, '惊！她能穿梭时空', '古代言情', 154);
INSERT INTO `女生月票榜` VALUES (87, '穿成继母后，我改造全家种田忙', '古代言情', 150);
INSERT INTO `女生月票榜` VALUES (88, '我的脑洞成真了', '现代言情', 150);
INSERT INTO `女生月票榜` VALUES (89, '诡秘之主：瑶光', '轻小说', 149);
INSERT INTO `女生月票榜` VALUES (90, '快穿之非常生物见闻录', '科幻空间', 149);
INSERT INTO `女生月票榜` VALUES (91, '科举相公家的地主婆', '古代言情', 146);
INSERT INTO `女生月票榜` VALUES (92, '成为病弱女修后', '仙侠奇缘', 146);
INSERT INTO `女生月票榜` VALUES (93, '修仙勿扰！女配逆天改命中', '仙侠奇缘', 144);
INSERT INTO `女生月票榜` VALUES (94, '大理寺来了只小弱鸡', '古代言情', 143);
INSERT INTO `女生月票榜` VALUES (95, '嫁给修理工后她震惊全球', '现代言情', 143);
INSERT INTO `女生月票榜` VALUES (96, '离婚后我成了顶流游戏制作人', '游戏竞技', 142);
INSERT INTO `女生月票榜` VALUES (97, '魏雅的悠闲生活', '现代言情', 141);
INSERT INTO `女生月票榜` VALUES (98, '亲子综艺上，豪门父母跪地求原谅', '现代言情', 140);
INSERT INTO `女生月票榜` VALUES (99, '末世老祖宗重生后飒爆了！', '古代言情', 137);
INSERT INTO `女生月票榜` VALUES (100, '快穿：炮灰女配不走心', '科幻空间', 137);

-- ----------------------------
-- Table structure for 推荐榜
-- ----------------------------
DROP TABLE IF EXISTS `推荐榜`;
CREATE TABLE `推荐榜`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hot` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 推荐榜
-- ----------------------------
INSERT INTO `推荐榜` VALUES (1, '谍影凌云', '军事', 246297);
INSERT INTO `推荐榜` VALUES (2, '师姐，我不想努力了', '仙侠', 175148);
INSERT INTO `推荐榜` VALUES (3, '青葫剑仙', '仙侠', 165017);
INSERT INTO `推荐榜` VALUES (4, '保护我方族长', '玄幻', 162637);
INSERT INTO `推荐榜` VALUES (5, '嘉佑嬉事', '仙侠', 158286);
INSERT INTO `推荐榜` VALUES (6, '仙府长生', '仙侠', 145571);
INSERT INTO `推荐榜` VALUES (7, '掌教仙途', '仙侠', 112889);
INSERT INTO `推荐榜` VALUES (8, '偷偷养只小金乌', '玄幻', 94323);
INSERT INTO `推荐榜` VALUES (9, '猫人冲冲冲', '奇幻', 83758);
INSERT INTO `推荐榜` VALUES (10, '天命第一仙', '仙侠', 63311);
INSERT INTO `推荐榜` VALUES (11, '宿命之环', '玄幻', 52791);
INSERT INTO `推荐榜` VALUES (12, '全民修仙：我总比别人先行一步', '仙侠', 45088);
INSERT INTO `推荐榜` VALUES (13, '重燃2003', '都市', 31444);
INSERT INTO `推荐榜` VALUES (14, '登神之前，做个好领主', '奇幻', 31018);
INSERT INTO `推荐榜` VALUES (15, '中元：找寻失踪的死者', '仙侠', 31014);
INSERT INTO `推荐榜` VALUES (16, '上元无生', '玄幻', 30259);
INSERT INTO `推荐榜` VALUES (17, '高武：从登录虚拟宇宙开始！', '玄幻', 27463);
INSERT INTO `推荐榜` VALUES (18, '深海余烬', '科幻', 18872);
INSERT INTO `推荐榜` VALUES (19, '择日飞升', '仙侠', 18009);
INSERT INTO `推荐榜` VALUES (20, '赤心巡天', '仙侠', 17805);
INSERT INTO `推荐榜` VALUES (21, '灵境行者', '科幻', 16941);
INSERT INTO `推荐榜` VALUES (22, '光阴之外', '仙侠', 14404);
INSERT INTO `推荐榜` VALUES (23, '这游戏也太真实了', '轻小说', 12399);
INSERT INTO `推荐榜` VALUES (24, '仙者', '仙侠', 11892);
INSERT INTO `推荐榜` VALUES (25, '国民法医', '都市', 10022);
INSERT INTO `推荐榜` VALUES (26, '苟在妖武乱世修仙', '仙侠', 9624);
INSERT INTO `推荐榜` VALUES (27, '明克街13号', '都市', 9565);
INSERT INTO `推荐榜` VALUES (28, '唐人的餐桌', '历史', 9330);
INSERT INTO `推荐榜` VALUES (29, '我本无意成仙', '轻小说', 8980);
INSERT INTO `推荐榜` VALUES (30, '乱世书', '玄幻', 8928);
INSERT INTO `推荐榜` VALUES (31, '御兽之王', '都市', 8852);
INSERT INTO `推荐榜` VALUES (32, '满唐华彩', '历史', 8769);
INSERT INTO `推荐榜` VALUES (33, '大明：史上最狠暴君', '历史', 8754);
INSERT INTO `推荐榜` VALUES (34, '半仙', '仙侠', 7884);
INSERT INTO `推荐榜` VALUES (35, '赘婿', '历史', 7682);
INSERT INTO `推荐榜` VALUES (36, '北宋穿越指南', '历史', 7455);
INSERT INTO `推荐榜` VALUES (37, '我的公公叫康熙', '历史', 7400);
INSERT INTO `推荐榜` VALUES (38, '招黑体质开局修行在废土', '科幻', 7319);
INSERT INTO `推荐榜` VALUES (39, '都重生了谁谈恋爱啊', '都市', 7122);
INSERT INTO `推荐榜` VALUES (40, '轮回乐园', '轻小说', 6940);
INSERT INTO `推荐榜` VALUES (41, '箱子里的大明', '历史', 6940);
INSERT INTO `推荐榜` VALUES (42, '隐秘死角', '科幻', 6906);
INSERT INTO `推荐榜` VALUES (43, '神话版三国', '历史', 6819);
INSERT INTO `推荐榜` VALUES (44, '女侠且慢', '玄幻', 6789);
INSERT INTO `推荐榜` VALUES (45, '重生之我要冲浪', '都市', 6669);
INSERT INTO `推荐榜` VALUES (46, '律师费才几个钱，你玩什么命啊！', '都市', 6641);
INSERT INTO `推荐榜` VALUES (47, '玄鉴仙族', '仙侠', 6487);
INSERT INTO `推荐榜` VALUES (48, '每天都离现形更近一步', '科幻', 6307);
INSERT INTO `推荐榜` VALUES (49, '深空彼岸', '都市', 6286);
INSERT INTO `推荐榜` VALUES (50, '浪子不浪', '都市', 5969);
INSERT INTO `推荐榜` VALUES (51, '仙灵妖神记', '仙侠', 5961);
INSERT INTO `推荐榜` VALUES (52, '回档06', '都市', 5756);
INSERT INTO `推荐榜` VALUES (53, '我为长生仙', '仙侠', 5718);
INSERT INTO `推荐榜` VALUES (54, '奶爸学园', '都市', 5639);
INSERT INTO `推荐榜` VALUES (55, '长夜君主', '玄幻', 5445);
INSERT INTO `推荐榜` VALUES (56, '谁让他修仙的！', '仙侠', 5373);
INSERT INTO `推荐榜` VALUES (57, '火力为王', '都市', 5340);
INSERT INTO `推荐榜` VALUES (58, '神话纪元，我进化成了恒星级巨兽', '玄幻', 4929);
INSERT INTO `推荐榜` VALUES (59, '大医无疆', '都市', 4633);
INSERT INTO `推荐榜` VALUES (60, '诡秘之主', '玄幻', 4556);
INSERT INTO `推荐榜` VALUES (61, '天人图谱', '玄幻', 4545);
INSERT INTO `推荐榜` VALUES (62, '征服之路', '体育', 4486);
INSERT INTO `推荐榜` VALUES (63, '我是导演，我不比烂', '都市', 4314);
INSERT INTO `推荐榜` VALUES (64, '我在春秋不当王', '历史', 4303);
INSERT INTO `推荐榜` VALUES (65, '我的华夏列祖列宗', '玄幻', 4114);
INSERT INTO `推荐榜` VALUES (66, '逼我重生是吧', '都市', 3978);
INSERT INTO `推荐榜` VALUES (67, '黜龙', '历史', 3925);
INSERT INTO `推荐榜` VALUES (68, '这个影帝只想考证', '都市', 3901);
INSERT INTO `推荐榜` VALUES (69, '衣冠不南渡', '历史', 3817);
INSERT INTO `推荐榜` VALUES (70, '重回1982小渔村', '都市', 3735);
INSERT INTO `推荐榜` VALUES (71, '我有一个修仙世界', '仙侠', 3725);
INSERT INTO `推荐榜` VALUES (72, '大明国师', '历史', 3667);
INSERT INTO `推荐榜` VALUES (73, '说好制作烂游戏，泰坦陨落什么鬼', '游戏', 3655);
INSERT INTO `推荐榜` VALUES (74, '红楼之挽天倾', '历史', 3638);
INSERT INTO `推荐榜` VALUES (75, '星火', '科幻', 3603);
INSERT INTO `推荐榜` VALUES (76, '兼职艺术家', '都市', 3530);
INSERT INTO `推荐榜` VALUES (77, '精灵宝可梦：带着超梦去旅行', '轻小说', 3521);
INSERT INTO `推荐榜` VALUES (78, '大明流浪手册', '历史', 3500);
INSERT INTO `推荐榜` VALUES (79, '美娱：我拍电影不在意成本', '都市', 3497);
INSERT INTO `推荐榜` VALUES (80, '最初进化', '玄幻', 3494);
INSERT INTO `推荐榜` VALUES (81, '让你当兵戒网瘾，你成军官了', '都市', 3409);
INSERT INTO `推荐榜` VALUES (82, '美漫从五级变种人开始', '诸天无限', 3343);
INSERT INTO `推荐榜` VALUES (83, '数风流人物', '历史', 3322);
INSERT INTO `推荐榜` VALUES (84, '玄浑道章', '仙侠', 3305);
INSERT INTO `推荐榜` VALUES (85, '一气朝阳', '仙侠', 3300);
INSERT INTO `推荐榜` VALUES (86, '洪荒历', '奇幻', 3230);
INSERT INTO `推荐榜` VALUES (87, '从武王伐纣开始建立千年世家', '历史', 3146);
INSERT INTO `推荐榜` VALUES (88, '穿越之我是祥子哥哥', '轻小说', 3119);
INSERT INTO `推荐榜` VALUES (89, '我在美国修魔道', '都市', 3103);
INSERT INTO `推荐榜` VALUES (90, '重塑千禧年代', '都市', 3097);
INSERT INTO `推荐榜` VALUES (91, '我在田宗剑道成仙', '仙侠', 3095);
INSERT INTO `推荐榜` VALUES (92, '从军火商到战争之王', '都市', 3042);
INSERT INTO `推荐榜` VALUES (93, '最终神职', '科幻', 3018);
INSERT INTO `推荐榜` VALUES (94, '宇宙职业选手', '科幻', 3012);
INSERT INTO `推荐榜` VALUES (95, '请公子斩妖', '仙侠', 2981);
INSERT INTO `推荐榜` VALUES (96, '星光如梦蝶', '都市', 2965);
INSERT INTO `推荐榜` VALUES (97, '苟在女魔头身边偷偷修炼', '仙侠', 2958);
INSERT INTO `推荐榜` VALUES (98, '高天之上', '奇幻', 2954);
INSERT INTO `推荐榜` VALUES (99, '消费系男神', '都市', 2950);
INSERT INTO `推荐榜` VALUES (100, '穿梭两界做无敌神豪', '轻小说', 2943);

-- ----------------------------
-- Table structure for 收藏榜
-- ----------------------------
DROP TABLE IF EXISTS `收藏榜`;
CREATE TABLE `收藏榜`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hot` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 收藏榜
-- ----------------------------
INSERT INTO `收藏榜` VALUES (1, '圣墟', '玄幻', 7413946);
INSERT INTO `收藏榜` VALUES (2, '诡秘之主', '玄幻', 7333774);
INSERT INTO `收藏榜` VALUES (3, '灵境行者', '科幻', 7223598);
INSERT INTO `收藏榜` VALUES (4, '斗破苍穹', '玄幻', 6188121);
INSERT INTO `收藏榜` VALUES (5, '大奉打更人', '仙侠', 5938864);
INSERT INTO `收藏榜` VALUES (6, '夜的命名术', '都市', 5429709);
INSERT INTO `收藏榜` VALUES (7, '修真聊天群（聊天群的日常生活）', '都市', 4989792);
INSERT INTO `收藏榜` VALUES (8, '一念永恒', '仙侠', 4649492);
INSERT INTO `收藏榜` VALUES (9, '我师兄实在太稳健了', '仙侠', 4161927);
INSERT INTO `收藏榜` VALUES (10, '万族之劫', '都市', 3879688);
INSERT INTO `收藏榜` VALUES (11, '这游戏也太真实了', '轻小说', 3791291);
INSERT INTO `收藏榜` VALUES (12, '光阴之外', '仙侠', 3789964);
INSERT INTO `收藏榜` VALUES (13, '镇妖博物馆', '悬疑', 3781996);
INSERT INTO `收藏榜` VALUES (14, '从今天开始做藩王', '历史', 3774940);
INSERT INTO `收藏榜` VALUES (15, '深空彼岸', '都市', 3555768);
INSERT INTO `收藏榜` VALUES (16, '从红月开始', '科幻', 3495851);
INSERT INTO `收藏榜` VALUES (17, '遮天', '仙侠', 3472255);
INSERT INTO `收藏榜` VALUES (18, '开局签到荒古圣体', '玄幻', 3290826);
INSERT INTO `收藏榜` VALUES (19, '我的治愈系游戏', '悬疑', 3248889);
INSERT INTO `收藏榜` VALUES (20, '高天之上', '奇幻', 3199536);
INSERT INTO `收藏榜` VALUES (21, '我真没想重生啊', '都市', 3106520);
INSERT INTO `收藏榜` VALUES (22, '牧神记', '玄幻', 3048292);
INSERT INTO `收藏榜` VALUES (23, '不科学御兽', '玄幻', 3042064);
INSERT INTO `收藏榜` VALUES (24, '斗罗大陆III龙王传说', '玄幻', 3033096);
INSERT INTO `收藏榜` VALUES (25, '第一序列', '都市', 2967631);
INSERT INTO `收藏榜` VALUES (26, '道诡异仙', '玄幻', 2810986);
INSERT INTO `收藏榜` VALUES (27, '星门：时光之主', '玄幻', 2725202);
INSERT INTO `收藏榜` VALUES (28, '吞噬星空', '科幻', 2709144);
INSERT INTO `收藏榜` VALUES (29, '完美世界', '玄幻', 2576291);
INSERT INTO `收藏榜` VALUES (30, '天启预报', '奇幻', 2443954);
INSERT INTO `收藏榜` VALUES (31, '轮回乐园', '轻小说', 2399763);
INSERT INTO `收藏榜` VALUES (32, '斗罗大陆', '玄幻', 2366106);
INSERT INTO `收藏榜` VALUES (33, '凡人修仙传', '仙侠', 2349480);
INSERT INTO `收藏榜` VALUES (34, '盘龙', '奇幻', 2309981);
INSERT INTO `收藏榜` VALUES (35, '宿命之环', '玄幻', 2244947);
INSERT INTO `收藏榜` VALUES (36, '明克街13号', '都市', 2171171);
INSERT INTO `收藏榜` VALUES (37, '玄界之门', '仙侠', 2143090);
INSERT INTO `收藏榜` VALUES (38, '放开那个女巫', '奇幻', 2094631);
INSERT INTO `收藏榜` VALUES (39, '神秘复苏', '仙侠', 2028626);
INSERT INTO `收藏榜` VALUES (40, '武侠：开局奖励满级神功', '武侠', 2009401);
INSERT INTO `收藏榜` VALUES (41, '庆余年', '历史', 1969742);
INSERT INTO `收藏榜` VALUES (42, '凡人修仙之仙界篇', '仙侠', 1968588);
INSERT INTO `收藏榜` VALUES (43, '赘婿', '历史', 1925834);
INSERT INTO `收藏榜` VALUES (44, '赤心巡天', '仙侠', 1921192);
INSERT INTO `收藏榜` VALUES (45, '大王饶命', '都市', 1890180);
INSERT INTO `收藏榜` VALUES (46, '大主宰', '玄幻', 1882360);
INSERT INTO `收藏榜` VALUES (47, '大明国师', '历史', 1878062);
INSERT INTO `收藏榜` VALUES (48, '全球高武', '都市', 1876572);
INSERT INTO `收藏榜` VALUES (49, '汉乡', '历史', 1794039);
INSERT INTO `收藏榜` VALUES (50, '全职高手', '游戏', 1723122);
INSERT INTO `收藏榜` VALUES (51, '飞剑问道', '仙侠', 1709467);
INSERT INTO `收藏榜` VALUES (52, '平平无奇大师兄', '轻小说', 1705744);
INSERT INTO `收藏榜` VALUES (53, '长夜余火', '玄幻', 1694557);
INSERT INTO `收藏榜` VALUES (54, '择日飞升', '仙侠', 1681016);
INSERT INTO `收藏榜` VALUES (55, '佣兵的战争', '现实', 1646131);
INSERT INTO `收藏榜` VALUES (56, '星辰变', '仙侠', 1603112);
INSERT INTO `收藏榜` VALUES (57, '稳住别浪', '都市', 1590301);
INSERT INTO `收藏榜` VALUES (58, '家父汉高祖', '历史', 1579125);
INSERT INTO `收藏榜` VALUES (59, '不朽凡人', '仙侠', 1578764);
INSERT INTO `收藏榜` VALUES (60, '超神机械师', '游戏', 1529664);
INSERT INTO `收藏榜` VALUES (61, '我有一座冒险屋', '悬疑', 1517178);
INSERT INTO `收藏榜` VALUES (62, '宇宙职业选手', '科幻', 1500306);
INSERT INTO `收藏榜` VALUES (63, '武动乾坤', '玄幻', 1438641);
INSERT INTO `收藏榜` VALUES (64, '我的姐夫是太子', '历史', 1434073);
INSERT INTO `收藏榜` VALUES (65, '这个人仙太过正经', '仙侠', 1420256);
INSERT INTO `收藏榜` VALUES (66, '大魏读书人', '仙侠', 1394843);
INSERT INTO `收藏榜` VALUES (67, '亏成首富从游戏开始', '游戏', 1381698);
INSERT INTO `收藏榜` VALUES (68, '朕', '历史', 1378249);
INSERT INTO `收藏榜` VALUES (69, '盗墓笔记', '悬疑', 1372186);
INSERT INTO `收藏榜` VALUES (70, '将夜', '玄幻', 1371959);
INSERT INTO `收藏榜` VALUES (71, '斗罗大陆II绝世唐门', '玄幻', 1357022);
INSERT INTO `收藏榜` VALUES (72, '雪鹰领主', '玄幻', 1344730);
INSERT INTO `收藏榜` VALUES (73, '烂柯棋缘', '仙侠', 1315591);
INSERT INTO `收藏榜` VALUES (74, '美食供应商', '都市', 1315489);
INSERT INTO `收藏榜` VALUES (75, '我用闲书成圣人', '仙侠', 1291457);
INSERT INTO `收藏榜` VALUES (76, '警探长', '现实', 1273995);
INSERT INTO `收藏榜` VALUES (77, '万界天尊', '玄幻', 1252554);
INSERT INTO `收藏榜` VALUES (78, '我就是不按套路出牌', '轻小说', 1235867);
INSERT INTO `收藏榜` VALUES (79, '道君', '仙侠', 1229063);
INSERT INTO `收藏榜` VALUES (80, '我欲封天', '仙侠', 1221704);
INSERT INTO `收藏榜` VALUES (81, '我的徒弟都是大反派', '玄幻', 1213271);
INSERT INTO `收藏榜` VALUES (82, '黎明之剑', '科幻', 1207710);
INSERT INTO `收藏榜` VALUES (83, '深海余烬', '科幻', 1170563);
INSERT INTO `收藏榜` VALUES (84, '术师手册', '轻小说', 1162158);
INSERT INTO `收藏榜` VALUES (85, '我的谍战岁月', '军事', 1161891);
INSERT INTO `收藏榜` VALUES (86, '九星毒奶', '科幻', 1159167);
INSERT INTO `收藏榜` VALUES (87, '大夏文圣', '仙侠', 1150671);
INSERT INTO `收藏榜` VALUES (88, '都重生了谁谈恋爱啊', '都市', 1133498);
INSERT INTO `收藏榜` VALUES (89, '仙逆', '仙侠', 1128743);
INSERT INTO `收藏榜` VALUES (90, '请公子斩妖', '仙侠', 1109218);
INSERT INTO `收藏榜` VALUES (91, '从斗罗开始打卡', '轻小说', 1078742);
INSERT INTO `收藏榜` VALUES (92, '机武风暴', '科幻', 1077139);
INSERT INTO `收藏榜` VALUES (93, '学霸的黑科技系统', '科幻', 1072177);
INSERT INTO `收藏榜` VALUES (94, '神墓', '玄幻', 1071525);
INSERT INTO `收藏榜` VALUES (95, '大梦主', '仙侠', 1062159);
INSERT INTO `收藏榜` VALUES (96, '惊悚乐园', '游戏', 1061347);
INSERT INTO `收藏榜` VALUES (97, '回到明朝当王爷', '历史', 1059298);
INSERT INTO `收藏榜` VALUES (98, '临渊行', '玄幻', 1057283);
INSERT INTO `收藏榜` VALUES (99, '校花的贴身高手', '都市', 1054889);
INSERT INTO `收藏榜` VALUES (100, '绍宋', '历史', 1048548);

-- ----------------------------
-- Table structure for 月票榜
-- ----------------------------
DROP TABLE IF EXISTS `月票榜`;
CREATE TABLE `月票榜`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hot` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 月票榜
-- ----------------------------
INSERT INTO `月票榜` VALUES (1, '宿命之环', '玄幻', 60737);
INSERT INTO `月票榜` VALUES (2, '赤心巡天', '仙侠', 58117);
INSERT INTO `月票榜` VALUES (3, '我为长生仙', '仙侠', 32857);
INSERT INTO `月票榜` VALUES (4, '我本无意成仙', '轻小说', 27138);
INSERT INTO `月票榜` VALUES (5, '光阴之外', '仙侠', 27046);
INSERT INTO `月票榜` VALUES (6, '深海余烬', '科幻', 25887);
INSERT INTO `月票榜` VALUES (7, '说好制作烂游戏，泰坦陨落什么鬼', '游戏', 25463);
INSERT INTO `月票榜` VALUES (8, '乱世书', '玄幻', 24045);
INSERT INTO `月票榜` VALUES (9, '国民法医', '都市', 23518);
INSERT INTO `月票榜` VALUES (10, '苟在妖武乱世修仙', '仙侠', 23219);
INSERT INTO `月票榜` VALUES (11, '这游戏也太真实了', '轻小说', 23002);
INSERT INTO `月票榜` VALUES (12, '养成系男神：听劝后，我成了顶流', '都市', 22778);
INSERT INTO `月票榜` VALUES (13, '灵境行者', '科幻', 22499);
INSERT INTO `月票榜` VALUES (14, '神话纪元，我进化成了恒星级巨兽', '玄幻', 21518);
INSERT INTO `月票榜` VALUES (15, '满唐华彩', '历史', 21455);
INSERT INTO `月票榜` VALUES (16, '御兽之王', '都市', 20321);
INSERT INTO `月票榜` VALUES (17, '明克街13号', '都市', 18777);
INSERT INTO `月票榜` VALUES (18, '大明国师', '历史', 17708);
INSERT INTO `月票榜` VALUES (19, '唐人的餐桌', '历史', 15356);
INSERT INTO `月票榜` VALUES (20, '渊天尊', '玄幻', 15227);
INSERT INTO `月票榜` VALUES (21, '都重生了谁谈恋爱啊', '都市', 14571);
INSERT INTO `月票榜` VALUES (22, '我的公公叫康熙', '历史', 14128);
INSERT INTO `月票榜` VALUES (23, '苟在女魔头身边偷偷修炼', '仙侠', 13973);
INSERT INTO `月票榜` VALUES (24, '谁让他修仙的！', '仙侠', 13283);
INSERT INTO `月票榜` VALUES (25, '择日飞升', '仙侠', 13248);
INSERT INTO `月票榜` VALUES (26, '北宋穿越指南', '历史', 12721);
INSERT INTO `月票榜` VALUES (27, '女侠且慢', '玄幻', 12539);
INSERT INTO `月票榜` VALUES (28, '我是导演，我不比烂', '都市', 12006);
INSERT INTO `月票榜` VALUES (29, '让你当兵戒网瘾，你成军官了', '都市', 11955);
INSERT INTO `月票榜` VALUES (30, '我的模拟长生路', '仙侠', 11356);
INSERT INTO `月票榜` VALUES (31, '我有一个修仙世界', '仙侠', 11217);
INSERT INTO `月票榜` VALUES (32, '重回1982小渔村', '都市', 11133);
INSERT INTO `月票榜` VALUES (33, '隐秘死角', '科幻', 10664);
INSERT INTO `月票榜` VALUES (34, '玄鉴仙族', '仙侠', 10657);
INSERT INTO `月票榜` VALUES (35, '光明壁垒', '科幻', 9452);
INSERT INTO `月票榜` VALUES (36, '死灵法师只想种树', '游戏', 8722);
INSERT INTO `月票榜` VALUES (37, '我在春秋不当王', '历史', 8324);
INSERT INTO `月票榜` VALUES (38, '从军火商到战争之王', '都市', 8134);
INSERT INTO `月票榜` VALUES (39, '轮回乐园', '轻小说', 7655);
INSERT INTO `月票榜` VALUES (40, '火力为王', '都市', 7373);
INSERT INTO `月票榜` VALUES (41, '重生之我要冲浪', '都市', 7291);
INSERT INTO `月票榜` VALUES (42, '我在荒岛肝属性', '科幻', 7271);
INSERT INTO `月票榜` VALUES (43, '高天之上', '奇幻', 7247);
INSERT INTO `月票榜` VALUES (44, '牧者密续', '轻小说', 7118);
INSERT INTO `月票榜` VALUES (45, '从武王伐纣开始建立千年世家', '历史', 7058);
INSERT INTO `月票榜` VALUES (46, '征服之路', '体育', 6776);
INSERT INTO `月票榜` VALUES (47, '我家娘子，不对劲', '轻小说', 6758);
INSERT INTO `月票榜` VALUES (48, '黎明之剑', '科幻', 6614);
INSERT INTO `月票榜` VALUES (49, '神话版三国', '历史', 6593);
INSERT INTO `月票榜` VALUES (50, '红楼之挽天倾', '历史', 6590);
INSERT INTO `月票榜` VALUES (51, '1980我的文艺时代', '都市', 6373);
INSERT INTO `月票榜` VALUES (52, '请公子斩妖', '仙侠', 6358);
INSERT INTO `月票榜` VALUES (53, '走进不科学', '科幻', 6333);
INSERT INTO `月票榜` VALUES (54, '我在现代留过学', '历史', 6193);
INSERT INTO `月票榜` VALUES (55, '从火影开始做打工人', '轻小说', 6125);
INSERT INTO `月票榜` VALUES (56, '巫师：从骑士呼吸法开始肝经验', '玄幻', 6094);
INSERT INTO `月票榜` VALUES (57, '诡秘之主', '玄幻', 5774);
INSERT INTO `月票榜` VALUES (58, '黜龙', '历史', 5704);
INSERT INTO `月票榜` VALUES (59, '赘婿', '历史', 5620);
INSERT INTO `月票榜` VALUES (60, '被巴萨甩卖国米后的那些事儿', '体育', 5471);
INSERT INTO `月票榜` VALUES (61, '最后的黑暗之王', '玄幻', 5469);
INSERT INTO `月票榜` VALUES (62, '谍影凌云', '军事', 5281);
INSERT INTO `月票榜` VALUES (63, '末世：我的关键词比别人多一个', '科幻', 5133);
INSERT INTO `月票榜` VALUES (64, '在美漫当心灵导师的日子', '轻小说', 5059);
INSERT INTO `月票榜` VALUES (65, '不许没收我的人籍', '轻小说', 4976);
INSERT INTO `月票榜` VALUES (66, '兼职艺术家', '都市', 4952);
INSERT INTO `月票榜` VALUES (67, '消费系男神', '都市', 4928);
INSERT INTO `月票榜` VALUES (68, '法力无边高大仙', '仙侠', 4810);
INSERT INTO `月票榜` VALUES (69, '战锤：我不要成为臭罐头啊！！！', '轻小说', 4722);
INSERT INTO `月票榜` VALUES (70, '我的诡异人生', '玄幻', 4591);
INSERT INTO `月票榜` VALUES (71, '整座大山都是我的猎场', '都市', 4583);
INSERT INTO `月票榜` VALUES (72, '霸武', '仙侠', 4525);
INSERT INTO `月票榜` VALUES (73, '大医无疆', '都市', 4513);
INSERT INTO `月票榜` VALUES (74, '我得给这世界上堂课', '都市', 4482);
INSERT INTO `月票榜` VALUES (75, '重塑千禧年代', '都市', 4366);
INSERT INTO `月票榜` VALUES (76, '四合院之饮食男女', '都市', 4349);
INSERT INTO `月票榜` VALUES (77, '星火', '科幻', 4279);
INSERT INTO `月票榜` VALUES (78, '重生日常修仙', '都市', 4224);
INSERT INTO `月票榜` VALUES (79, '保护我方族长', '玄幻', 4220);
INSERT INTO `月票榜` VALUES (80, '朕真的不务正业', '历史', 4136);
INSERT INTO `月票榜` VALUES (81, '从肉体凡胎到粉碎星球', '玄幻', 4049);
INSERT INTO `月票榜` VALUES (82, '招黑体质开局修行在废土', '科幻', 4045);
INSERT INTO `月票榜` VALUES (83, '我的1991', '都市', 3992);
INSERT INTO `月票榜` VALUES (84, '仙子，请听我解释', '仙侠', 3948);
INSERT INTO `月票榜` VALUES (85, '呢喃诗章', '轻小说', 3900);
INSERT INTO `月票榜` VALUES (86, '道诡异仙', '玄幻', 3879);
INSERT INTO `月票榜` VALUES (87, '国王', '奇幻', 3841);
INSERT INTO `月票榜` VALUES (88, '晚唐浮生', '历史', 3773);
INSERT INTO `月票榜` VALUES (89, '港岛旧事', '都市', 3770);
INSERT INTO `月票榜` VALUES (90, '路明非不想当超级英雄', '轻小说', 3762);
INSERT INTO `月票榜` VALUES (91, '我在军营肝技能', '都市', 3670);
INSERT INTO `月票榜` VALUES (92, '奶爸学园', '都市', 3659);
INSERT INTO `月票榜` VALUES (93, '重生的我没有格局', '都市', 3623);
INSERT INTO `月票榜` VALUES (94, '英雄无敌之隐藏建筑大师', '游戏', 3603);
INSERT INTO `月票榜` VALUES (95, '全民逃荒，我的物品能升级', '玄幻', 3598);
INSERT INTO `月票榜` VALUES (96, '困在日食的那一天', '都市', 3585);
INSERT INTO `月票榜` VALUES (97, '我就是神！', '玄幻', 3557);
INSERT INTO `月票榜` VALUES (98, '别怕，我不是魔头', '轻小说', 3553);
INSERT INTO `月票榜` VALUES (99, '第一玩家', '游戏', 3528);
INSERT INTO `月票榜` VALUES (100, '父可敌国', '历史', 3527);

-- ----------------------------
-- Table structure for vip收藏榜
-- ----------------------------
DROP TABLE IF EXISTS `vip收藏榜`;
CREATE TABLE `vip收藏榜`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hot` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip收藏榜
-- ----------------------------
INSERT INTO `vip收藏榜` VALUES (1, '圣墟', '玄幻', 7413946);
INSERT INTO `vip收藏榜` VALUES (2, '诡秘之主', '玄幻', 7333774);
INSERT INTO `vip收藏榜` VALUES (3, '灵境行者', '科幻', 7223598);
INSERT INTO `vip收藏榜` VALUES (4, '斗破苍穹', '玄幻', 6188121);
INSERT INTO `vip收藏榜` VALUES (5, '大奉打更人', '仙侠', 5938864);
INSERT INTO `vip收藏榜` VALUES (6, '夜的命名术', '都市', 5429709);
INSERT INTO `vip收藏榜` VALUES (7, '修真聊天群（聊天群的日常生活）', '都市', 4989792);
INSERT INTO `vip收藏榜` VALUES (8, '一念永恒', '仙侠', 4649492);
INSERT INTO `vip收藏榜` VALUES (9, '我师兄实在太稳健了', '仙侠', 4161927);
INSERT INTO `vip收藏榜` VALUES (10, '万族之劫', '都市', 3879688);
INSERT INTO `vip收藏榜` VALUES (11, '这游戏也太真实了', '轻小说', 3791291);
INSERT INTO `vip收藏榜` VALUES (12, '光阴之外', '仙侠', 3789964);
INSERT INTO `vip收藏榜` VALUES (13, '镇妖博物馆', '悬疑', 3781996);
INSERT INTO `vip收藏榜` VALUES (14, '从今天开始做藩王', '历史', 3774940);
INSERT INTO `vip收藏榜` VALUES (15, '深空彼岸', '都市', 3555768);
INSERT INTO `vip收藏榜` VALUES (16, '从红月开始', '科幻', 3495851);
INSERT INTO `vip收藏榜` VALUES (17, '遮天', '仙侠', 3472255);
INSERT INTO `vip收藏榜` VALUES (18, '开局签到荒古圣体', '玄幻', 3290826);
INSERT INTO `vip收藏榜` VALUES (19, '我的治愈系游戏', '悬疑', 3248889);
INSERT INTO `vip收藏榜` VALUES (20, '高天之上', '奇幻', 3199536);
INSERT INTO `vip收藏榜` VALUES (21, '我真没想重生啊', '都市', 3106520);
INSERT INTO `vip收藏榜` VALUES (22, '牧神记', '玄幻', 3048292);
INSERT INTO `vip收藏榜` VALUES (23, '不科学御兽', '玄幻', 3042064);
INSERT INTO `vip收藏榜` VALUES (24, '斗罗大陆III龙王传说', '玄幻', 3033096);
INSERT INTO `vip收藏榜` VALUES (25, '第一序列', '都市', 2967631);
INSERT INTO `vip收藏榜` VALUES (26, '道诡异仙', '玄幻', 2810986);
INSERT INTO `vip收藏榜` VALUES (27, '星门：时光之主', '玄幻', 2725202);
INSERT INTO `vip收藏榜` VALUES (28, '吞噬星空', '科幻', 2709144);
INSERT INTO `vip收藏榜` VALUES (29, '完美世界', '玄幻', 2576291);
INSERT INTO `vip收藏榜` VALUES (30, '天启预报', '奇幻', 2443954);
INSERT INTO `vip收藏榜` VALUES (31, '轮回乐园', '轻小说', 2399763);
INSERT INTO `vip收藏榜` VALUES (32, '斗罗大陆', '玄幻', 2366106);
INSERT INTO `vip收藏榜` VALUES (33, '凡人修仙传', '仙侠', 2349480);
INSERT INTO `vip收藏榜` VALUES (34, '盘龙', '奇幻', 2309981);
INSERT INTO `vip收藏榜` VALUES (35, '宿命之环', '玄幻', 2244947);
INSERT INTO `vip收藏榜` VALUES (36, '明克街13号', '都市', 2171171);
INSERT INTO `vip收藏榜` VALUES (37, '玄界之门', '仙侠', 2143090);
INSERT INTO `vip收藏榜` VALUES (38, '放开那个女巫', '奇幻', 2094631);
INSERT INTO `vip收藏榜` VALUES (39, '神秘复苏', '仙侠', 2028626);
INSERT INTO `vip收藏榜` VALUES (40, '武侠：开局奖励满级神功', '武侠', 2009401);
INSERT INTO `vip收藏榜` VALUES (41, '庆余年', '历史', 1969742);
INSERT INTO `vip收藏榜` VALUES (42, '凡人修仙之仙界篇', '仙侠', 1968588);
INSERT INTO `vip收藏榜` VALUES (43, '赘婿', '历史', 1925834);
INSERT INTO `vip收藏榜` VALUES (44, '赤心巡天', '仙侠', 1921192);
INSERT INTO `vip收藏榜` VALUES (45, '大王饶命', '都市', 1890180);
INSERT INTO `vip收藏榜` VALUES (46, '大主宰', '玄幻', 1882360);
INSERT INTO `vip收藏榜` VALUES (47, '大明国师', '历史', 1878062);
INSERT INTO `vip收藏榜` VALUES (48, '全球高武', '都市', 1876572);
INSERT INTO `vip收藏榜` VALUES (49, '汉乡', '历史', 1794039);
INSERT INTO `vip收藏榜` VALUES (50, '全职高手', '游戏', 1723122);
INSERT INTO `vip收藏榜` VALUES (51, '飞剑问道', '仙侠', 1709467);
INSERT INTO `vip收藏榜` VALUES (52, '平平无奇大师兄', '轻小说', 1705744);
INSERT INTO `vip收藏榜` VALUES (53, '长夜余火', '玄幻', 1694557);
INSERT INTO `vip收藏榜` VALUES (54, '择日飞升', '仙侠', 1681016);
INSERT INTO `vip收藏榜` VALUES (55, '佣兵的战争', '现实', 1646131);
INSERT INTO `vip收藏榜` VALUES (56, '星辰变', '仙侠', 1603112);
INSERT INTO `vip收藏榜` VALUES (57, '稳住别浪', '都市', 1590301);
INSERT INTO `vip收藏榜` VALUES (58, '家父汉高祖', '历史', 1579125);
INSERT INTO `vip收藏榜` VALUES (59, '不朽凡人', '仙侠', 1578764);
INSERT INTO `vip收藏榜` VALUES (60, '超神机械师', '游戏', 1529664);
INSERT INTO `vip收藏榜` VALUES (61, '我有一座冒险屋', '悬疑', 1517178);
INSERT INTO `vip收藏榜` VALUES (62, '宇宙职业选手', '科幻', 1500306);
INSERT INTO `vip收藏榜` VALUES (63, '武动乾坤', '玄幻', 1438641);
INSERT INTO `vip收藏榜` VALUES (64, '我的姐夫是太子', '历史', 1434073);
INSERT INTO `vip收藏榜` VALUES (65, '这个人仙太过正经', '仙侠', 1420256);
INSERT INTO `vip收藏榜` VALUES (66, '大魏读书人', '仙侠', 1394843);
INSERT INTO `vip收藏榜` VALUES (67, '亏成首富从游戏开始', '游戏', 1381698);
INSERT INTO `vip收藏榜` VALUES (68, '朕', '历史', 1378249);
INSERT INTO `vip收藏榜` VALUES (69, '盗墓笔记', '悬疑', 1372186);
INSERT INTO `vip收藏榜` VALUES (70, '将夜', '玄幻', 1371959);
INSERT INTO `vip收藏榜` VALUES (71, '斗罗大陆II绝世唐门', '玄幻', 1357022);
INSERT INTO `vip收藏榜` VALUES (72, '雪鹰领主', '玄幻', 1344730);
INSERT INTO `vip收藏榜` VALUES (73, '烂柯棋缘', '仙侠', 1315591);
INSERT INTO `vip收藏榜` VALUES (74, '美食供应商', '都市', 1315489);
INSERT INTO `vip收藏榜` VALUES (75, '我用闲书成圣人', '仙侠', 1291457);
INSERT INTO `vip收藏榜` VALUES (76, '警探长', '现实', 1273995);
INSERT INTO `vip收藏榜` VALUES (77, '万界天尊', '玄幻', 1252554);
INSERT INTO `vip收藏榜` VALUES (78, '我就是不按套路出牌', '轻小说', 1235867);
INSERT INTO `vip收藏榜` VALUES (79, '道君', '仙侠', 1229063);
INSERT INTO `vip收藏榜` VALUES (80, '我欲封天', '仙侠', 1221704);
INSERT INTO `vip收藏榜` VALUES (81, '我的徒弟都是大反派', '玄幻', 1213271);
INSERT INTO `vip收藏榜` VALUES (82, '黎明之剑', '科幻', 1207710);
INSERT INTO `vip收藏榜` VALUES (83, '深海余烬', '科幻', 1170563);
INSERT INTO `vip收藏榜` VALUES (84, '术师手册', '轻小说', 1162158);
INSERT INTO `vip收藏榜` VALUES (85, '我的谍战岁月', '军事', 1161891);
INSERT INTO `vip收藏榜` VALUES (86, '九星毒奶', '科幻', 1159167);
INSERT INTO `vip收藏榜` VALUES (87, '大夏文圣', '仙侠', 1150671);
INSERT INTO `vip收藏榜` VALUES (88, '都重生了谁谈恋爱啊', '都市', 1133498);
INSERT INTO `vip收藏榜` VALUES (89, '仙逆', '仙侠', 1128743);
INSERT INTO `vip收藏榜` VALUES (90, '请公子斩妖', '仙侠', 1109218);
INSERT INTO `vip收藏榜` VALUES (91, '从斗罗开始打卡', '轻小说', 1078742);
INSERT INTO `vip收藏榜` VALUES (92, '机武风暴', '科幻', 1077139);
INSERT INTO `vip收藏榜` VALUES (93, '学霸的黑科技系统', '科幻', 1072177);
INSERT INTO `vip收藏榜` VALUES (94, '神墓', '玄幻', 1071525);
INSERT INTO `vip收藏榜` VALUES (95, '大梦主', '仙侠', 1062159);
INSERT INTO `vip收藏榜` VALUES (96, '惊悚乐园', '游戏', 1061347);
INSERT INTO `vip收藏榜` VALUES (97, '回到明朝当王爷', '历史', 1059298);
INSERT INTO `vip收藏榜` VALUES (98, '临渊行', '玄幻', 1057283);
INSERT INTO `vip收藏榜` VALUES (99, '校花的贴身高手', '都市', 1054889);
INSERT INTO `vip收藏榜` VALUES (100, '绍宋', '历史', 1048548);

-- ----------------------------
-- Table structure for vip新作月票榜
-- ----------------------------
DROP TABLE IF EXISTS `vip新作月票榜`;
CREATE TABLE `vip新作月票榜`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hot` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip新作月票榜
-- ----------------------------
INSERT INTO `vip新作月票榜` VALUES (1, '御兽之王', '都市', 20334);
INSERT INTO `vip新作月票榜` VALUES (2, '征服之路', '体育', 6792);
INSERT INTO `vip新作月票榜` VALUES (3, '路明非不想当超级英雄', '轻小说', 3764);
INSERT INTO `vip新作月票榜` VALUES (4, '全民逃荒，我的物品能升级', '玄幻', 3599);
INSERT INTO `vip新作月票榜` VALUES (5, '别怕，我不是魔头', '轻小说', 3559);
INSERT INTO `vip新作月票榜` VALUES (6, '谁让你能力这么用的？', '玄幻', 3279);
INSERT INTO `vip新作月票榜` VALUES (7, '苟在手术室加点升级', '都市', 1799);
INSERT INTO `vip新作月票榜` VALUES (8, '律师费才几个钱，你玩什么命啊！', '都市', 1759);
INSERT INTO `vip新作月票榜` VALUES (9, '逼我重生是吧', '都市', 1714);
INSERT INTO `vip新作月票榜` VALUES (10, '瞎编功法，徒儿你真练成了？', '玄幻', 1689);
INSERT INTO `vip新作月票榜` VALUES (11, '舍弟诸葛亮', '历史', 1548);
INSERT INTO `vip新作月票榜` VALUES (12, '盛唐挽歌', '历史', 1465);
INSERT INTO `vip新作月票榜` VALUES (13, '托身锋刃里', '玄幻', 1446);
INSERT INTO `vip新作月票榜` VALUES (14, '食仙主', '玄幻', 1302);
INSERT INTO `vip新作月票榜` VALUES (15, '重生从娶女知青开始', '都市', 1279);
INSERT INTO `vip新作月票榜` VALUES (16, '限制级模拟', '玄幻', 1252);
INSERT INTO `vip新作月票榜` VALUES (17, '爱发微博的我，成了职业通天代', '游戏', 1104);
INSERT INTO `vip新作月票榜` VALUES (18, '篮球没有捷径', '体育', 1027);
INSERT INTO `vip新作月票榜` VALUES (19, '从全职猎人开始成为无上意志', '轻小说', 949);
INSERT INTO `vip新作月票榜` VALUES (20, '都追尾了那就嫁给你', '都市', 890);
INSERT INTO `vip新作月票榜` VALUES (21, '开局天降正义，我竟被FBI盯上', '都市', 879);
INSERT INTO `vip新作月票榜` VALUES (22, '霍格沃茨的和平主义亡灵巫师', '轻小说', 873);
INSERT INTO `vip新作月票榜` VALUES (23, '四合院之光', '诸天无限', 873);
INSERT INTO `vip新作月票榜` VALUES (24, '雀魂：开局国士无双', '都市', 865);
INSERT INTO `vip新作月票榜` VALUES (25, '我的末日愿望清单', '轻小说', 863);
INSERT INTO `vip新作月票榜` VALUES (26, '综漫：从杀手皇后开始', '轻小说', 845);
INSERT INTO `vip新作月票榜` VALUES (27, '忍校教师，我教书就能变强', '轻小说', 842);
INSERT INTO `vip新作月票榜` VALUES (28, '西游：都成玉帝了，佛门还想大兴', '仙侠', 810);
INSERT INTO `vip新作月票榜` VALUES (29, 'CSGO：这个选手太听劝了！', '游戏', 807);
INSERT INTO `vip新作月票榜` VALUES (30, '千禧大导演', '都市', 708);
INSERT INTO `vip新作月票榜` VALUES (31, '学霸的军工科研系统', '科幻', 707);
INSERT INTO `vip新作月票榜` VALUES (32, '杀死长生者', '仙侠', 698);
INSERT INTO `vip新作月票榜` VALUES (33, '女外援：我们LPL真是太强啦', '游戏', 695);
INSERT INTO `vip新作月票榜` VALUES (34, '人在仙武，有小游戏', '玄幻', 685);
INSERT INTO `vip新作月票榜` VALUES (35, '游戏能力继承，我囤积百亿防御塔', '游戏', 638);
INSERT INTO `vip新作月票榜` VALUES (36, '都重生了，又当消防兵了？', '都市', 612);
INSERT INTO `vip新作月票榜` VALUES (37, '美漫从五级变种人开始', '诸天无限', 607);
INSERT INTO `vip新作月票榜` VALUES (38, '诸天：从小欢喜当爹开始', '诸天无限', 595);
INSERT INTO `vip新作月票榜` VALUES (39, '都市：从大专开始当校长！', '都市', 584);
INSERT INTO `vip新作月票榜` VALUES (40, '季汉大司马', '历史', 568);
INSERT INTO `vip新作月票榜` VALUES (41, '神诡复苏：从石胎灵猴分身开始', '玄幻', 560);
INSERT INTO `vip新作月票榜` VALUES (42, '修仙：当你把事情做到极致', '仙侠', 559);
INSERT INTO `vip新作月票榜` VALUES (43, '一颗龙珠吞入腹', '玄幻', 558);
INSERT INTO `vip新作月票榜` VALUES (44, '这个狐仙太不是人了', '仙侠', 551);
INSERT INTO `vip新作月票榜` VALUES (45, '毒修', '仙侠', 530);
INSERT INTO `vip新作月票榜` VALUES (46, '文娱重生狂想曲', '都市', 508);
INSERT INTO `vip新作月票榜` VALUES (47, '神话再临：我获得了烛龙血脉', '诸天无限', 500);
INSERT INTO `vip新作月票榜` VALUES (48, '她们都入戏太深了！', '都市', 494);
INSERT INTO `vip新作月票榜` VALUES (49, '八尺大人家的女婿', '诸天无限', 493);
INSERT INTO `vip新作月票榜` VALUES (50, '让你印卡，没让你弑神', '轻小说', 479);
INSERT INTO `vip新作月票榜` VALUES (51, '四合院：我的老婆是文丽', '都市', 477);
INSERT INTO `vip新作月票榜` VALUES (52, '我养的猪八戒超凶', '玄幻', 470);
INSERT INTO `vip新作月票榜` VALUES (53, '我能听到中药心声', '都市', 460);
INSERT INTO `vip新作月票榜` VALUES (54, '盘龙：成为主神的我被四神兽盯上', '轻小说', 450);
INSERT INTO `vip新作月票榜` VALUES (55, '功夫熊猫，从养生拳开始', '玄幻', 442);
INSERT INTO `vip新作月票榜` VALUES (56, '巫师从大脑封闭术开始', '奇幻', 440);
INSERT INTO `vip新作月票榜` VALUES (57, '我，神话巨人', '诸天无限', 437);
INSERT INTO `vip新作月票榜` VALUES (58, '从打铁开始骑砍欧陆', '游戏', 431);
INSERT INTO `vip新作月票榜` VALUES (59, '科幻：银河帝国的崛起', '科幻', 430);
INSERT INTO `vip新作月票榜` VALUES (60, '我真和你姐离婚了', '都市', 429);
INSERT INTO `vip新作月票榜` VALUES (61, '网王之黑色荣耀', '轻小说', 408);
INSERT INTO `vip新作月票榜` VALUES (62, '人在诸天，繁育标兵', '诸天无限', 400);
INSERT INTO `vip新作月票榜` VALUES (63, '只要工资到位，冠军全部干碎', '游戏', 399);
INSERT INTO `vip新作月票榜` VALUES (64, '我在综武当神捕', '诸天无限', 396);
INSERT INTO `vip新作月票榜` VALUES (65, '天罡地煞：从一人风后奇门开始', '诸天无限', 394);
INSERT INTO `vip新作月票榜` VALUES (66, '巫师：苟在蒸汽纪元加点猎魔', '玄幻', 394);
INSERT INTO `vip新作月票榜` VALUES (67, '重生从丢掉白月光开始', '都市', 393);
INSERT INTO `vip新作月票榜` VALUES (68, '人在dc，天天行政休假', '诸天无限', 380);
INSERT INTO `vip新作月票榜` VALUES (69, '木叶：这个佐助拥有提瓦特', '轻小说', 379);
INSERT INTO `vip新作月票榜` VALUES (70, '让你当好圣孙，你养一群女妖？', '玄幻', 373);
INSERT INTO `vip新作月票榜` VALUES (71, '神豪系统：天上掉下九千万亿', '都市', 369);
INSERT INTO `vip新作月票榜` VALUES (72, '一周目救世勇者，二周目穿越魔王', '轻小说', 354);
INSERT INTO `vip新作月票榜` VALUES (73, '玩家请闭眼', '轻小说', 354);
INSERT INTO `vip新作月票榜` VALUES (74, '我在游戏竞技场里修个仙', '都市', 340);
INSERT INTO `vip新作月票榜` VALUES (75, '斗罗：这个唐三不一样', '轻小说', 330);
INSERT INTO `vip新作月票榜` VALUES (76, '你骂谁吃软饭呢', '轻小说', 330);
INSERT INTO `vip新作月票榜` VALUES (77, '木叶：我老婆是纲手', '轻小说', 324);
INSERT INTO `vip新作月票榜` VALUES (78, '作为玩家，您能正常点吗', '游戏', 324);
INSERT INTO `vip新作月票榜` VALUES (79, '重走人生路之我是小厂医', '都市', 319);
INSERT INTO `vip新作月票榜` VALUES (80, '斗罗：人在绝世，悟性逆天', '轻小说', 318);
INSERT INTO `vip新作月票榜` VALUES (81, '笑傲之气剑合一', '武侠', 314);
INSERT INTO `vip新作月票榜` VALUES (82, '从丧尸宇宙开始的美漫之旅', '轻小说', 309);
INSERT INTO `vip新作月票榜` VALUES (83, '凡人：天南第一体修', '仙侠', 305);
INSERT INTO `vip新作月票榜` VALUES (84, '大秦逮捕方士，关我炼气士什么事', '历史', 297);
INSERT INTO `vip新作月票榜` VALUES (85, '咒术师？我，战锤灵能者', '轻小说', 297);
INSERT INTO `vip新作月票榜` VALUES (86, '混沌新纪元从大宋开始', '奇幻', 295);
INSERT INTO `vip新作月票榜` VALUES (87, '一人之下：我既一人，尽压天下', '轻小说', 292);
INSERT INTO `vip新作月票榜` VALUES (88, '黑科技：我有一家改装厂', '科幻', 292);
INSERT INTO `vip新作月票榜` VALUES (89, '苦境：逆龙改命刀无形', '武侠', 290);
INSERT INTO `vip新作月票榜` VALUES (90, '精灵：我的游戏能提现', '轻小说', 288);
INSERT INTO `vip新作月票榜` VALUES (91, '漫威：我制作的游戏入侵了现实', '诸天无限', 287);
INSERT INTO `vip新作月票榜` VALUES (92, '足球：听劝后，我成最强自由人！', '体育', 286);
INSERT INTO `vip新作月票榜` VALUES (93, '不好意思，在下略胜一筹', '仙侠', 286);
INSERT INTO `vip新作月票榜` VALUES (94, '灵植：我有词条面板', '仙侠', 284);
INSERT INTO `vip新作月票榜` VALUES (95, '秦时不良人', '轻小说', 280);
INSERT INTO `vip新作月票榜` VALUES (96, '让你流浪，你成全国旅游形象大使', '都市', 277);
INSERT INTO `vip新作月票榜` VALUES (97, '全民游戏，我的天赋是修改器', '玄幻', 275);
INSERT INTO `vip新作月票榜` VALUES (98, '半岛：雪之守护', '都市', 274);
INSERT INTO `vip新作月票榜` VALUES (99, '大清话事人', '历史', 271);
INSERT INTO `vip新作月票榜` VALUES (100, '黄金时代1990', '都市', 270);

SET FOREIGN_KEY_CHECKS = 1;
