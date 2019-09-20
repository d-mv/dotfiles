module.exports = {
  singleQuote: true,
  jsxBracketSameLine: true,
  jsxSingleQuote: true,
  bracketSpacing: false, // upgrade to 60.5
  printWidth: 90,
  semi: true,
  tabWidth: 2,
  trailingComma: 'all', // upgrade to 60.5
  arrowParens: 'avoid',
  endOfLine: 'lf',
  overrides: [
    {
      files: '*.json',
      options: {
        singleQuote: false,
        parser: 'json',
      },
    },
    {
      files: ['*.ts', '*tsx'],
      options: {
        parser: 'typescript',
      },
    },
  ],
};
