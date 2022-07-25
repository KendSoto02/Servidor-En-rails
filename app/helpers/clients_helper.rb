module ClientsHelper

    def statusClients
        Client.statusClients.keys.map do |statusClient|
          [t("activerecord.attributes.client.statusClients.#{statusClient}"), statusClient]
        end
    end

    def rolUsers
      Client.rolUsers.keys.map do |rolUser|
        [t("activerecord.attributes.client.rolUsers.#{rolUser}"), rolUser]
      end
    end
end