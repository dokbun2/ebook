# Ebook Project

A professional ebook creation and management system with support for multiple output formats.

## Features

- 📝 Write content in Markdown for maximum portability
- 📚 Generate multiple output formats (EPUB, PDF, HTML)
- 🎨 Consistent styling across all formats
- 📁 Organized project structure
- 🔄 Version control friendly

## Project Structure

```
ebook/
├── .claude/          # Claude Code configuration
├── src/             # Source content
│   ├── chapters/    # Book chapters in Markdown
│   ├── assets/      # Images, diagrams, etc.
│   └── metadata/    # Book metadata
├── dist/            # Generated output files
├── scripts/         # Build and conversion scripts
└── README.md        # This file
```

## Getting Started

1. **Create your content structure**:
   ```bash
   mkdir -p src/{chapters,assets,metadata}
   mkdir -p dist
   mkdir -p scripts
   ```

2. **Write your first chapter**:
   Create `src/chapters/chapter-01-introduction.md`:
   ```markdown
   ---
   title: "Introduction"
   chapter: 1
   ---
   
   # Introduction
   
   Your content here...
   ```

3. **Set up metadata**:
   Create `src/metadata/book.yaml`:
   ```yaml
   title: "Your Book Title"
   author: "Your Name"
   language: "en"
   date: "2025"
   publisher: "Self Published"
   rights: "© 2025 Your Name. All rights reserved."
   ```

## Building Your Ebook

### Prerequisites

- [Pandoc](https://pandoc.org/) for document conversion
- [Node.js](https://nodejs.org/) (optional, for build scripts)
- [Calibre](https://calibre-ebook.com/) (optional, for additional format support)

### Basic Build Commands

**Convert to EPUB**:
```bash
pandoc src/chapters/*.md -o dist/book.epub --metadata-file=src/metadata/book.yaml
```

**Convert to PDF**:
```bash
pandoc src/chapters/*.md -o dist/book.pdf --metadata-file=src/metadata/book.yaml
```

**Convert to HTML**:
```bash
pandoc src/chapters/*.md -o dist/book.html --metadata-file=src/metadata/book.yaml --standalone
```

## Writing Guidelines

### Chapter Structure
- Use `#` for chapter titles
- Use `##` for major sections
- Use `###` for subsections
- Keep consistent heading hierarchy

### Images
- Store in `src/assets/`
- Reference with relative paths: `![Alt text](../assets/image.png)`
- Optimize for ebook file size (typically <1MB per image)

### Cross-references
- Use Pandoc's cross-reference syntax
- Link between chapters when needed
- Maintain a consistent citation style

## Advanced Features

### Custom Styling
Create custom CSS for EPUB/HTML output:
```bash
pandoc src/chapters/*.md -o dist/book.epub --css=styles/custom.css
```

### Table of Contents
Pandoc automatically generates a table of contents:
```bash
pandoc src/chapters/*.md -o dist/book.epub --toc --toc-depth=2
```

### Multiple Languages
Structure for multilingual books:
```
src/
├── en/
│   └── chapters/
├── es/
│   └── chapters/
└── fr/
    └── chapters/
```

## Best Practices

1. **Version Control**: Commit your source files regularly
2. **Backup**: Keep backups of both source and generated files
3. **Testing**: Test output on multiple ebook readers
4. **Metadata**: Keep book metadata up to date
5. **File Size**: Optimize images and keep total file size reasonable

## Troubleshooting

### Common Issues

**Formatting problems**: Check Markdown syntax and Pandoc filters
**Missing images**: Verify file paths are correct and relative
**Large file size**: Compress images and remove unnecessary content

## Contributing

This is a template project. Feel free to customize it for your specific needs.

## License

This project template is provided as-is for your ebook creation needs.