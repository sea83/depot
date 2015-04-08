desc "Создание 3-х пользователей с разными правами"
namespace :users do
  task :create=>:environment do
    us1=User.create(email: "admin@admin.ru",
      password: "qwertyadmin",
      phone_number: "4632167890",
      address: "Moscow", role: 2)
    us2=User.create(email: "moderator@moderator.ru",
      password: "qwertymoderator",
      phone_number: "8888999777",
      address: "St. Petersburg", role: 1)
    us3=User.create(email: "user@user.ru",
      password: "qwertyuser",
      phone_number: "7546656123",
      address: "Tula", role: 0)
  end
end
