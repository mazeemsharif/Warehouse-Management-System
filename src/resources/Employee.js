import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const EmployeeList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="employeeid" />
      <TextField source="empname" />
      <TextField source="phonenumber" />
      <TextField source="jobtitle" />
      <EditButton />
    </Datagrid>
  </List>
);

export const EmployeeEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="employeeid" />
      <TextInput source="empname" />
      <TextInput source="phonenumber" />
      <TextInput source="jobtitle" />
    </SimpleForm>
  </Edit>
);

export const EmployeeCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="employeeid" />
      <TextInput source="empname" />
      <TextInput source="phonenumber" />
      <TextInput source="jobtitle" />
    </SimpleForm>
  </Create>
);

export const EmployeeShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="employeeid" />
      <TextField source="empname" />
      <TextField source="phonenumber" />
      <TextField source="jobtitle" />
    </SimpleShowLayout>
  </Show>
);
