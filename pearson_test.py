# encoding: utf-8
'''
@contact: 1257309054@qq.com
@wechat: 1257309054
@Software: PyCharm
@file: pearson_test.py
@time: 2020/3/2 17:11
@author:LDC
'''
from math import sqrt

# 比如有5个用户分别给自己看的电影打分，这些都是样本数据
users = {
    '用户A': {'唐伯虎点秋香': 5, '逃学威龙1': 1, '追龙': 2, '他人笑我太疯癫': 0},
    '用户B': {'唐伯虎点秋香': 4, '喜欢你': 2, '暗战': 3.5},
    '用户C': {'复仇者联盟1': 4.5, '逃学威龙1': 2, '大黄蜂': 2.5, '蜘蛛侠：平行宇宙': 2, '巴霍巴利王：开端': 4},
    '用户D': {'狗十三': 2, '无双': 5},
    '用户E': {'无双': 4, '逃学威龙1': 4, '逃学威龙2': 4.5, '他人笑我太疯癫': 3}
}

# 现在要给用户E找相似用户，称E为需求用户
user = '用户E'
userInfo = users[user]
pearson_result = []
for u in users:
    # 遍历样本数据
    if u != user:
        # 对每一个样本与需求用户求皮尔逊距离
        sum_x, sum_y, sum_x2, sum_y2, sum_xy, n = 0, 0, 0, 0, 0, 0
        for key, value in users[u].items():
            # 遍历用户打分的电影数据
            if key in userInfo.keys():
                # 找出需求用户样本用户观看的相同的电影，称为集合A
                x = userInfo[key]   # 需求用户对电影打的分
                y = value  # 样本用户对电影打的分
                sum_x += x
                sum_y += y
                sum_x2 += pow(x, 2)  # 求平方和
                sum_y2 += pow(y, 2)
                sum_xy += x * y
                n += 1
        if n > 0:
            denominator = sqrt(sum_x2 - pow(sum_x, 2) / n) * sqrt(sum_y2 - pow(sum_y, 2) / n)
            result = 0.
            if denominator > 0:
                result = (sum_xy - (sum_x * sum_y) / n) / denominator
                print("{} 与 {} 相识度：{}".format(user, u, result))
                pearson_result.append(result)

print(pearson_result)
