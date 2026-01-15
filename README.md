# 🎮 Kuikly 炸弹人游戏

一个基于 Three.js 开发的 3D 炸弹人游戏，支持多种主题关卡和特殊效果。

## 🎯 游戏特色

- **多样化关卡主题**：童话森林、海底世界、现代都市、沙漠绿洲等
- **3D 视觉效果**：使用 Three.js 打造的精美 3D 场景
- **特殊道具系统**：炸弹增强、速度提升、穿墙等道具
- **环境互动**：沙漠龙卷风、海底气泡等环境特效
- **GLB 模型支持**：支持加载自定义 3D 模型

## 🚀 在线游戏

[点击这里开始游戏](https://hnaloveme.github.io/kuikly-bomber-game/)

## 🎮 游戏操作

- **WASD** 或 **方向键**：移动角色
- **空格键**：放置炸弹
- **ESC键**：暂停/继续游戏

## 🛠️ 本地运行

如果想在本地运行游戏：

1. 克隆仓库：
```bash
git clone https://github.com/hnaloveme/kuikly-bomber-game.git
cd kuikly-bomber-game
```

2. 启动本地服务器：
```bash
python -m http.server 8000
```

3. 在浏览器中打开：`http://localhost:8000/index.html`

## 📁 项目结构

```
kuikly-bomber-game/
├── index.html          # 主游戏文件
├── images/            # 游戏图片资源
├── audio/             # 音效文件
├── models/            # 3D模型文件
├── Level/             # 关卡模型
└── README.md          # 项目说明
```

## 🎨 关卡主题

1. **童话森林** - 梦幻的森林场景，配有童话山模型
2. **海底世界** - 深海探险，珊瑚礁和气泡效果
3. **现代都市** - 城市建筑和现代化场景
4. **沙漠绿洲** - 沙漠环境，带有龙卷风特效

## 🔧 技术栈

- **Three.js** - 3D 图形渲染
- **WebGL** - 硬件加速图形
- **HTML5 Canvas** - 游戏画布
- **Web Audio API** - 音效处理

## 📝 更新日志

- 添加童话山 GLB 模型支持
- 优化地板渲染，消除空隙
- 改进材质光照效果
- 优化龙卷风落点算法

---

享受游戏！🎉