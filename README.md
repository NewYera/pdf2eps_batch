# pdf2eps
将 PDF 批量转换为封装的PostScript（eps）

## 多个PDF文件批量处理
### 在 Windows 上

将`pdf2eps_all.bat`文件与将要转换的`.pdf`文件放置在同一目录下，双击`pdf2eps_all.bat`，等待处理完毕即可。

## 单个PDF文件处理
### 在 Windows 上

你可以使用 Windows 命令行（cmd），并输入（先切换目录到批处理文件所在位置）：

`./pdf2eps.bat <page number> <pdf file>`

例如：

`./pdf2eps.bat 1 input.pdf`

### 在 Unix 上（包括 macOS）

你可以使用终端，并输入（先切换目录到脚本文件所在位置）：

`$ bash ./pdf2eps.sh <page number> <pdf file>`

例如：

`$ bash ./pdf2eps.sh 1 input.pdf`

## 依赖
1. TeXLive
2. 如果找不到 `pdftops` 命令，你需要安装 `poppler`。

## 许可证

代码基于 Herbert 的被采纳答案。你可以在这里找到：[https://tex.stackexchange.com/questions/20883/how-to-convert-pdf-to-eps](https://tex.stackexchange.com/questions/20883/how-to-convert-pdf-to-eps)。

本程序以 [MIT 许可证](LICENSE) 发布。
