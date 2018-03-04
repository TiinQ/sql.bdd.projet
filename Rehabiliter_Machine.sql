CREATE PROCEDURE [dbo].[Rehabiliter_machine] @Num_Presse smallint,
								 @message varchar(200) output	
as
declare @code_retour int;
	begin try
		--Verification si le num�ro de presse n'est pas null
		if @Num_Presse is null
			begin
				set @message = 'Num�ro de presse invalide';
				set @code_retour = 1;
			end
		--Verification si la presse existe
		else if not exists (select Num_Presse from MACHINE where Num_Presse = @Num_Presse )
			begin
				set @message = 'La presse ' + CONVERT (varchar(10),@Num_Presse) + ' n'' existe pas';
				set @code_retour = 2;
			end
		--Suppression de la presse avec valeur � 1 pour "Supprimer"
		else
			begin
				update MACHINE
				set Supprim�e = 0
				where Num_Presse = @Num_Presse;
				set @message = 'La presse ' + CONVERT (varchar(10),@Num_Presse) + ' a �t� r�habilit�e'
				set @code_retour = 0
				
			end
	end try
	begin catch
		set @message='erreur base de donn�es' + ERROR_MESSAGE() ;
		set @code_retour=3;
	end catch
return @code_retour