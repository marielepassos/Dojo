Dado("que esteja na home do site OrangeHRM") do
  visit "http://opensource.demo.orangehrmlive.com/index.php/dashboard"
end

Quando("selecionar PIM > Add Employee") do
  fill_in('txtUsername', :with=> 'admin')
  fill_in('txtPassword', :with=> 'admin')
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
 end

Entao("empregado sera cadastrado com sucesso") do
  fill_in('firstName', :with=> 'paola')
    fill_in('lastName', :with=> 'bracho')
    click_button('btnSave')
   end