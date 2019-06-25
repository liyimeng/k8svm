import React, { PropTypes } from 'react'
import { Form, Input, Button, Spin } from 'antd'
import styles from './setting.less'
const FormItem = Form.Item

const form = ({
  form: {
  getFieldDecorator,
  getFieldsValue,
  },
  data,
  saving,
  onSubmit,
  loading,
}) => {
  const handleOnSubmit = () => {
    const fields = getFieldsValue()
    onSubmit(fields)
  }
  const settings = data.map((item) => <FormItem key={item.metadata.uid}>
    {getFieldDecorator(item.metadata.name, {
      initialValue: item.spec.value,
    })(<Input addonBefore={item.metadata.name.humpToSpace()} />)}
  </FormItem>)

  return (
    <Spin spinning={loading}>
      {loading ? <div></div> : <Form layout="horizontal" className={styles.setting}>
        {settings}
        <FormItem style={{ textAlign: 'center' }}>
          <Button
            onClick={handleOnSubmit}
            loading={saving}
            type="primary"
            htmlType="submit">
            Save
          </Button>
        </FormItem>
      </Form>}
    </Spin>
  )
}

form.propTypes = {
  form: PropTypes.object.isRequired,
  data: PropTypes.array,
  onSubmit: PropTypes.func,
  saving: PropTypes.bool,
  loading: PropTypes.bool,
}

export default Form.create()(form)
