CREATE PROCEDURE [dbo].[Rehabiliter_machine] @Num_Presse smallint,
								 @message varchar(200) output	
as
declare @code_retour int;
	begin try
		--Verification si le numéro de presse n'est pas null
		if @Num_Presse is null
			begin
				set @message = 'Numéro de presse invalide';
				set @code_retour = 1;
			end
		--Verification si la presse existe
		else if not exists (select Num_Presse from MACHINE where Num_Presse = @Num_Presse )
			begin
				set @message = 'La presse ' + CONVERT (varchar(10),@Num_Presse) + ' n'' existe pas';
				set @code_retour = 2;
			end
		--Suppression de la presse avec valeur à 1 pour "Supprimer"
		else
			begin
				update MACHINE
				set Supprimée = 0
				where Num_Presse = @Num_Presse;
				set @message = 'La presse ' + CONVERT (varchar(10),@Num_Presse) + ' a été réhabilitée'
				set @code_retour = 0
				
			end
	end try
	begin catch
		set @message='erreur base de données' + ERROR_MESSAGE() ;
		set @code_retour=3;
	end catch
return @code_retour