
Dado("esteja na home do site OrangeHRM") do
  visit "http://opensource.demo.orangehrmlive.com/index.php/dashboard"
  fill_in('txtUsername', :with=> 'admin')
  fill_in('txtPassword', :with=> 'admin')
  click_button('btnLogin')
end

Quando("selecionar PIM > Employee List") do
   click_link('menu_pim_viewPimModule')
   click_link('menu_pim_viewEmployeeList')
end

Entao("cadastro sera editado com sucesso") do
   #fill_in('empsearch[employee_name][empName]', :with=> 'paola')
   #click_button('searchBtn')
   visit "http://opensource.demo.orangehrmlive.com/index.php/pim/viewEmployee/empNumber/10"
   click_button('btnSave')
   fill_in('personal_txtEmpFirstName', :with=> 'paulina')
   click_button('btnSave')
   assert_text('Successfully Saved')
      binding.pry
 end
