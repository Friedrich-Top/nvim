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

  -- Use the directory where Neovim was started when there is no project marker.
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
