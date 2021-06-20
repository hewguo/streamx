// 自动注入
const svgs = {}
const context = require.context('./libs', false, /^.+\.svg$/i)
for (const item of context.keys()) {
  const regex = /^(?:\.\/)?(.+)\.svg$/i
  const key = item.replace(regex, '$1')
  svgs[key] = context(item).default
}

// 返回组件
export default {
  name: 'SIcon',
  inheritAttrs: false,
  render () {
    const props = this.$attrs
    const type = this.$attrs.type
    if (Object.keys(svgs).includes(type)) {
      return <a-icon { ...{ props } } component={svgs[type]}/>
    }
    return <a-icon { ...{ props } }/>
  }
}
