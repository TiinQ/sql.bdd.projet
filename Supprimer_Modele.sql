CREATE PROCEDURE [dbo].[Supprimer_Modele] @m_Modele TypeModele,
								 @message varchar(200) output	
as
declare @code_retour int;
	begin try
		--Verification si le modèle n'est pas null
		if @m_Modele is null
			begin
				set @message = 'Modèle invalide';
				set @code_retour = 1;
			end
		--Verification si le modèle existe
		else if not exists (select Modele from MODELE where Modele = @m_Modele )
			begin
				set @message = 'Le modèle ' + CONVERT (varchar(10),@m_Modele) + ' n'' existe pas';
				set @code_retour = 2;
			end
		--Suppression du modèle avec valeur à 1 pour "Supprimer"
		else
			begin
				update MODELE
				set Supprimée = 1
				where Modele = @m_Modele;
				set @message = 'Le Modèle ' + CONVERT (varchar(10),@m_Modele) + ' a été supprimée'
				set @code_retour = 0
				
			end
	end try
	begin catch
		set @message='erreur base de données' + ERROR_MESSAGE() ;
		set @code_retour=3;
	end catch
return @code_retour