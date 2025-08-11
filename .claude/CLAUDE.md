# Ebook Project - Claude Code Instructions

## Project Overview
This is an ebook creation and management project. The goal is to create well-structured, professional ebooks with proper formatting, organization, and export capabilities.

## Project Structure
```
ebook/
├── .claude/          # Claude Code configuration
├── src/             # Source content
│   ├── chapters/    # Book chapters in Markdown
│   ├── assets/      # Images, diagrams, etc.
│   └── metadata/    # Book metadata (title, author, etc.)
├── dist/            # Generated output files
├── scripts/         # Build and conversion scripts
└── README.md        # Project documentation
```

## Key Guidelines

### Content Creation
- Write chapters in Markdown format for maximum portability
- Use clear, hierarchical heading structure (# for chapter titles, ## for sections)
- Keep images in the assets folder with descriptive names
- Include proper front matter (title, author, date) in each chapter

### File Naming Conventions
- Chapters: `chapter-01-introduction.md`, `chapter-02-getting-started.md`
- Images: Use kebab-case: `diagram-workflow.png`, `screenshot-example.jpg`
- Output files: `book-title-YYYY-MM-DD.epub`, `book-title-YYYY-MM-DD.pdf`

### Build Process
- Convert Markdown to EPUB using Pandoc or similar tools
- Support multiple output formats (EPUB, PDF, HTML)
- Maintain consistent styling across all formats
- Include table of contents generation

### Quality Standards
- Proper metadata for all ebook formats
- Accessible formatting (proper heading hierarchy, alt text for images)
- Cross-reference support within the book
- Version control for iterative improvements

### Tools & Technologies
- Markdown for source content
- Pandoc for conversion
- Git for version control
- Node.js for build scripts (if needed)

## Common Tasks

### Creating a New Chapter
1. Create a new file in `src/chapters/` following naming convention
2. Add front matter with title and metadata
3. Write content using proper Markdown structure
4. Update table of contents if manually maintained

### Building the Ebook
1. Ensure all chapters are complete and properly formatted
2. Run build script to generate output formats
3. Review generated files for formatting issues
4. Make any necessary adjustments and rebuild

### Adding Images
1. Place image files in `src/assets/`
2. Reference in Markdown using relative paths
3. Include descriptive alt text for accessibility
4. Optimize images for ebook file size

## Important Notes
- Keep source files in version control
- Regular backups of both source and generated files
- Test output on multiple ebook readers
- Consider internationalization for future translations

# Claude Development Assistant Settings

## Language Preference
- **Primary Language**: Korean (한글)
- **Code Comments**: Korean
- **Technical Explanations**: Korean
- **Error Translations**: Translate to Korean

## Communication Style
- Be friendly and detailed
- Use Korean for all explanations
- Provide Korean comments in code examples

## Example
When explaining code, format like this:
```javascript
// 사용자 정보를 가져오는 함수
function getUserData() {
    // API 호출 로직
    return fetch('/api/user');
}