return {
  root_dir = function(bufnr, on_dir)
  local root = vim.fs.root(bufnr, {
    ".jdtls-root",
    ".git",
    "mvnw",
    "gradlew",
    "settings.gradle",
    "settings.gradle.kts",
    "pom.xml",
    "build.gradle",
    "build.gradle.kts",
  })

  -- 没有项目标记时，使用启动 Neovim 时的目录
  on_dir(vim.fs.normalize(root or vim.uv.cwd()))
  end,

  settings = {
    java = {
      project = {
        sourcePaths = { "." },
        outputPath = "bin",
      },
    },
  },
}
