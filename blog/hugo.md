# hugo
Hugo is a framework that can create site quickly.

## Document  help:
[quick start](https://gohugo.io/getting-started/quick-start/)

## image process
[image processing](https://gohugo.io/content-management/image-processing/)

## syntax
### build and publish website
```
hugo new directory/post-name.md
```
Create a new post, by default it is a draft and will not be published.
```
hugo server -D
hugo server
hugo
```

### reference link
```go
{{< ref "document2" >}}             // <- From pages/document1.md, relative path
{{< ref "document2#anchor" >}}      
{{< ref "document2.md" >}}          
{{< ref "document2.md#anchor" >}}   
{{< ref "#anchor" >}}               // <- From pages/document2.md
{{< ref "/blog/my-post" >}}         // <- From anywhere, absolute path
{{< ref "/blog/my-post.md" >}}
{{< relref "document" >}}
{{< relref "document.md" >}}
{{< relref "#anchor" >}}
{{< relref "/blog/my-post.md" >}}
```

Second line for previewing.
Use `--D` or build draft mode to preview the website with draft
Use `hugo` to publish the site.

## Templates
Generate syntax using in templates
```
{{ FUNCTION ARG1 ARG2 .. }}
```
**Multi level:**
```
{{ if or
  (isset .Params "alt")
  (isset .Params "caption")
}}
```
The contents in Templates can be accessed by others HTML file by `{{ shortcode 
}}`
shortcode is the code that already defined by templates and can be accessed by 
included it in HTML file.

## add mathTex support.
```html
{{ if or .Params.math .Site.Params.math }}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/katex.min.css" integrity="sha384-AfEj0r4/OFrOo5t7NnNe46zW/tFgW6x/bCJG8FqQCEo3+Aro6EYUG4+cU+KJWu/X" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/katex.min.js" integrity="sha384-g7c+Jr9ZivxKLnZTDUhnkOnsh30B4H0rpLUpJ4jAIKs4fnJI+sEnkvrMWph2EDg4" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/contrib/auto-render.min.js" integrity="sha384-mll67QQFJfxn0IYznZYonOWZ644AWYC+Pt2cHqMaRhXVrursRwvLnLaebdGIlYNa" crossorigin="anonymous"
    onload="renderMathInElement(document.body);"></script>
{{ end }}
```
Add those line in ~/your site/layouts/partial/extended_header.html

