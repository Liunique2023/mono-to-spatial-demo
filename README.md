# Mono to Spatial Audio Demo 网页

这是一个用于展示单通道转双耳空间音频的Demo网页模板。

## 📁 需要提供的文件

### 1. 音频文件 (必须)
将音频文件按照以下结构放置在对应文件夹中：

```
├── Mono/                # 单通道输入音频
│   ├── sample1.wav
│   ├── sample2.wav
│   └── ...
├── BinauralZero/        # BinauralZero 方法输出
│   ├── sample1.wav
│   ├── sample2.wav
│   └── ...
├── WarpNet/             # WarpNet 方法输出
│   ├── sample1.wav
│   └── ...
├── BinauralGrad/        # BinauralGrad 方法输出
│   ├── sample1.wav
│   └── ...
├── NFS/                 # NFS 方法输出
│   ├── sample1.wav
│   └── ...
└── GroundTruth/         # 真实双耳音频
    ├── sample1.wav
    └── ...
```

**重要提示：**
- 所有文件夹中的音频文件名必须一致（如 sample1.wav, sample2.wav 等）
- 推荐使用 `.wav` 格式，也支持 `.mp3` 格式
- 双耳音频必须是立体声（2通道）

### 2. 模型架构图 (推荐)
```
└── images/
    └── model_overview.png   # 你的模型架构图
```

### 3. 网页文件 (已创建)
```
├── index.html           # 主网页文件
└── style.css            # 样式文件
```

## 🔧 自定义步骤

### 修改 index.html:

1. **标题**: 修改 `<h1 class="title">` 中的文字
2. **作者**: 修改 `.authors` div 中的作者名
3. **摘要**: 修改 `.abs` div 中的文字
4. **音频样本**: 
   - 修改 `<source src="...">` 中的文件路径
   - 复制 `<tr class="audio">` 块来添加更多样本
5. **引用**: 修改 `.bibtex` 中的 BibTeX 信息
6. **链接**: 修改论文、代码、数据集的链接

### 添加更多音频样本:

在 `<tbody>` 中添加更多行：

```html
<tr class="audio">
    <td><audio controls><source src="Mono/新文件名.wav" type="audio/wav"></audio></td>
    <td><audio controls><source src="BinauralZero/新文件名.wav" type="audio/wav"></audio></td>
    <td><audio controls><source src="WarpNet/新文件名.wav" type="audio/wav"></audio></td>
    <td><audio controls><source src="BinauralGrad/新文件名.wav" type="audio/wav"></audio></td>
    <td><audio controls><source src="NFS/新文件名.wav" type="audio/wav"></audio></td>
    <td><audio controls><source src="GroundTruth/新文件名.wav" type="audio/wav"></audio></td>
</tr>
```

## 🚀 部署方式

### 方式1: GitHub Pages (推荐)
1. 创建 GitHub 仓库
2. 上传所有文件
3. 进入 Settings > Pages
4. 选择 main 分支，保存
5. 访问 `https://你的用户名.github.io/仓库名/`

### 方式2: 本地预览
```bash
# 使用 Python 启动本地服务器
python3 -m http.server 8000

# 然后访问 http://localhost:8000
```

### 方式3: 其他静态托管服务
- Netlify
- Vercel
- Cloudflare Pages

## 📝 注意事项

1. **耳机提示**: 双耳音频需要使用耳机才能感受空间效果
2. **文件大小**: 音频文件较大时考虑压缩或使用 MP3 格式
3. **命名一致**: 确保各文件夹中的文件名完全一致
4. **响应式**: 网页已适配移动端浏览

## 📋 完整目录结构

```
mono-to-spatial-demo/
├── index.html           # 主网页
├── style.css            # 样式表
├── README.md            # 说明文档
├── images/
│   └── model_overview.png
├── Mono/
│   ├── sample1.wav
│   ├── sample2.wav
│   └── sample3.wav
├── BinauralZero/
│   ├── sample1.wav
│   ├── sample2.wav
│   └── sample3.wav
├── WarpNet/
│   ├── sample1.wav
│   ├── sample2.wav
│   └── sample3.wav
├── BinauralGrad/
│   ├── sample1.wav
│   ├── sample2.wav
│   └── sample3.wav
├── NFS/
│   ├── sample1.wav
│   ├── sample2.wav
│   └── sample3.wav
└── GroundTruth/
    ├── sample1.wav
    ├── sample2.wav
    └── sample3.wav
```
