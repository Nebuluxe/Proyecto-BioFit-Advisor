-- Poblar la tabla Users
INSERT INTO Users (FirstName, LastName, Email, Password, Phone, CreatedBy, Status)
VALUES 
('Alejandro', 'Ruiz', 'alejandro@example.com', '8af12fba418adb3f8824f49f26f1cd0521f25a3b9f53b7adb4a1c8b83cb5cc56', '1234567890', NULL, TRUE),
('Beatriz', 'López', 'beatriz@example.com', '35ec239c664d17768068ab1753baf8b7407388530302abb2a51a5bb0440b33e2', '9876543210', NULL, TRUE),
('Carlos', 'Martínez', 'carlos@example.com', '8816bb7025bd9fde13288960f6843504585343dd62073ae189b9e4415ad26fa2', '4567890123', NULL, TRUE),
('Diana', 'Gómez', 'diana@example.com', 'ef2ea55ad2b0c51083344e84cc6dc895668c5fee21146a89dfe72f36bbccd0b5', '7894561230', NULL, TRUE),
('Eduardo', 'Pérez', 'eduardo@example.com', '918e2ae21305f60cfda52ed81db05422ddad1ab6e71f0a831114e6938c216d70', '3216549870', NULL, TRUE),
('Fernanda', 'Ramos', 'fernanda@example.com', '0f30b565c4ec53b5fe655b642b6586150b417e3bbc823fe8089e29fb3bee2eea', '6543210987', NULL, TRUE),
('Gabriel', 'Torres', 'gabriel@example.com', 'd85bce964d9d38b64631c2517368c85c809e813e56db78d26f16fa27e0b2c377', '9873214560', NULL, TRUE),
('Hilda', 'Vega', 'hilda@example.com', '56bd72c83609901e6d6438ceaf283fca893e25078469751b4103ab5cedd0f7a6', '1593572460', NULL, TRUE),
('Iván', 'García', 'ivan@example.com', 'fe1f4df46d3e16fa9b4f0ff10789c086e435ed40710e015c8841b71c8d6fed0b', '7539514860', NULL, TRUE),
('Jorge', 'Fernández', 'jorge@example.com', '9bf5fe02f00be85700e3e665f83ef4b933f37c032f935619e4d9474359d2ad11', '8529637410', NULL, TRUE);

-- Poblar la tabla Plan
INSERT INTO Plan (UserId, Name, Language, Description, Status, NumberOfWeeks)
VALUES 
(1, 'Plan Full Body', 'es', 'Mejora tu resistencia y fuerza en 4 semanas.', TRUE, 4),
(2, 'Plan Hipertrofia', 'en', 'Muscle building plan in 4 weeks.', TRUE, 4),
(3, 'Plan Cardiovascular', 'es', 'Entrenamiento de cardio intensivo de 3 semanas.', TRUE, 3),
(4, 'Plan Definición', 'es', 'Plan para reducir grasa corporal en 4 semanas.', TRUE, 4),
(5, 'Plan Fuerza', 'en', 'Strength improvement plan in 2 weeks.', TRUE, 2),
(6, 'Plan HIIT', 'es', 'Plan de entrenamiento HIIT de 1 semana.', TRUE, 1),
(7, 'Plan Crossfit', 'en', 'Crossfit plan in 3 weeks.', TRUE, 3),
(8, 'Plan de Flexibilidad', 'es', 'Mejora tu flexibilidad con este plan de 2 semanas.', TRUE, 2),
(9, 'Plan de Movilidad', 'en', 'Improve mobility with a 4-week plan.', TRUE, 4),
(10, 'Plan Endurance', 'es', 'Plan de resistencia física en 3 semanas.', TRUE, 3);

-- Poblar la tabla PlanSchedule
INSERT INTO PlanSchedule (PlanId, StartDate, EndDate, Status)
VALUES 
(1, '2024-09-01', '2024-09-28', 'Active'),
(2, '2024-08-01', '2024-08-28', 'Completed'),
(3, '2024-09-15', '2024-10-05', 'Pending'),
(4, '2024-09-10', '2024-10-10', 'Active'),
(5, '2024-07-01', '2024-07-14', 'Completed'),
(6, '2024-09-20', '2024-09-27', 'Pending'),
(7, '2024-08-15', '2024-09-05', 'Completed'),
(8, '2024-10-01', '2024-10-15', 'Pending'),
(9, '2024-09-05', '2024-10-02', 'Active'),
(10, '2024-08-25', '2024-09-18', 'Completed');

-- Poblar la tabla Exercise
INSERT INTO Exercise (PlanId, DayNumber, ExerciseIdentifier, ExerciseSubIdentifier, Duration, Repetitions, Sets, WeightPercentage)
VALUES 
(1, 1, 'squat', 'bodyweight', 60, 15, 3, NULL),
(1, 1, 'push-up', 'bodyweight', 60, 12, 3, NULL),
(2, 1, 'bench press', 'barbell', 90, 10, 4, '70%'),
(3, 1, 'jump rope', 'cardio', 180, NULL, 1, NULL),
(4, 1, 'deadlift', 'barbell', 120, 8, 3, '80%'),
(5, 1, 'burpees', 'bodyweight', 60, 10, 3, NULL),
(6, 1, 'plank', 'core', 90, NULL, 3, NULL),
(7, 1, 'clean and jerk', 'barbell', 120, 5, 4, '85%'),
(8, 1, 'lunges', 'bodyweight', 60, 12, 3, NULL),
(9, 1, 'pull-up', 'bodyweight', 90, 8, 3, NULL);

-- Poblar la tabla Recommendations
INSERT INTO Recommendations (PlanId, Recommendation)
VALUES 
(1, 'Descansa entre series: 60-90 segundos para hipertrofia, 2-3 minutos para fuerza.'),
(2, 'Descansa al menos un día entre entrenamientos intensos.'),
(3, 'Descanso activo los días sin entrenamiento.'),
(4, 'Hidrátate adecuadamente entre ejercicios.'),
(5, 'No entrenes más de 5 días por semana.'),
(6, 'Permite al menos 48 horas de descanso entre entrenamientos de fuerza.'),
(7, 'Incluye días de descanso completo en la semana.'),
(8, 'Controla la intensidad para evitar lesiones.'),
(9, 'Realiza estiramientos suaves en los días de descanso.'),
(10, 'Monitorea tu nivel de energía para ajustar el descanso.');

-- Poblar la tabla NutritionalAdvice
INSERT INTO NutritionalAdvice (PlanId, Protein, Carbohidratos, Fat, Hydration, Supplements)
VALUES 
(1, 'Consume 1.6-2.2g/kg de proteína.', 'Mantén los carbohidratos moderados.', 'Añade grasas saludables.', 'Bebe 2-3 litros de agua.', 'Usa creatina y proteínas en polvo.'),
(2, 'Añade más proteína animal.', 'Consume carbohidratos complejos.', 'Modera el consumo de grasas.', 'Mantente hidratado constantemente.', 'Considera tomar BCAA.'),
(3, 'Mantén alta la ingesta de proteínas.', 'Modera los carbohidratos.', 'Usa grasas saludables para energía.', 'Asegúrate de hidratarte adecuadamente.', 'Usa electrolitos.'),
(4, 'Ingiere proteínas magras.', 'Aumenta los carbohidratos antes del ejercicio.', 'Reduce las grasas antes del entrenamiento.', 'Toma agua antes, durante y después del entrenamiento.', 'Incluye multivitamínicos.'),
(5, 'Aumenta la proteína en todas las comidas.', 'Reduce los carbohidratos progresivamente.', 'Focaliza las grasas saludables.', 'Bebe más agua en días de entrenamiento.', 'Considera suplementos de omega-3.');

-- Poblar la tabla Precautions
INSERT INTO Precautions (PlanId, Precaution)
VALUES 
(1, 'Evita ejercicios que generen dolor en las articulaciones.'),
(2, 'Usa técnicas correctas para evitar lesiones.'),
(3, 'Realiza estiramientos adecuados antes y después del ejercicio.'),
(4, 'No uses cargas excesivas para tu nivel de experiencia.'),
(5, 'Si experimentas dolor, reduce la intensidad del ejercicio.'),
(6, 'Aumenta el peso de forma gradual.'),
(7, 'Consulta a un profesional si sientes molestias persistentes.'),
(8, 'Mantén una postura adecuada durante los ejercicios.'),
(9, 'Escucha a tu cuerpo y descansa si es necesario.'),
(10, 'No te saltes el calentamiento.');

-- Poblar la tabla UserSubscription
INSERT INTO UserSubscription (UserId, SubscriptionPlanName, SubscriptionStartDate, SubscriptionEndDate, IsActive)
VALUES 
(1, 'Plan Mensual', '2024-08-01', '2024-08-31', TRUE),
(2, 'Plan Anual', '2024-01-01', '2024-12-31', TRUE),
(3, 'Plan Semestral', '2024-03-01', '2024-09-01', TRUE),
(4, 'Plan Trimestral', '2024-05-01', '2024-08-01', FALSE),
(5, 'Plan Mensual', '2024-09-01', '2024-09-30', TRUE),
(6, 'Plan Anual', '2023-12-01', '2024-11-30', TRUE),
(7, 'Plan Semestral', '2024-07-01', '2024-12-31', TRUE),
(8, 'Plan Trimestral', '2024-04-01', '2024-07-01', FALSE),
(9, 'Plan Mensual', '2024-08-15', '2024-09-15', TRUE),
(10, 'Plan Anual', '2024-02-01', '2025-01-31', TRUE);

-- Poblar la tabla Billing
INSERT INTO Billing (UserId, Amount, BillingDate, DueDate)
VALUES 
(1, 49.99, '2024-08-01', '2024-08-31'),
(2, 599.99, '2024-01-01', '2024-12-31'),
(3, 299.99, '2024-03-01', '2024-09-01'),
(4, 149.99, '2024-05-01', '2024-08-01'),
(5, 49.99, '2024-09-01', '2024-09-30'),
(6, 599.99, '2023-12-01', '2024-11-30'),
(7, 299.99, '2024-07-01', '2024-12-31'),
(8, 149.99, '2024-04-01', '2024-07-01'),
(9, 49.99, '2024-08-15', '2024-09-15'),
(10, 599.99, '2024-02-01', '2025-01-31');

-- Poblar la tabla PaymentHistory
INSERT INTO PaymentHistory (BillingId, UserId, PlanName, PaymentDate, Amount, Currency, PaymentMethod, TransactionId)
VALUES 
(1, 1, 'Plan Mensual', '2024-08-01', 49.99, 'USD', 'Credit Card', 'TRX001'),
(2, 2, 'Plan Anual', '2024-01-01', 599.99, 'USD', 'PayPal', 'TRX002'),
(3, 3, 'Plan Semestral', '2024-03-01', 299.99, 'USD', 'Credit Card', 'TRX003'),
(4, 4, 'Plan Trimestral', '2024-05-01', 149.99, 'USD', 'PayPal', 'TRX004'),
(5, 5, 'Plan Mensual', '2024-09-01', 49.99, 'USD', 'Credit Card', 'TRX005'),
(6, 6, 'Plan Anual', '2023-12-01', 599.99, 'USD', 'PayPal', 'TRX006'),
(7, 7, 'Plan Semestral', '2024-07-01', 299.99, 'USD', 'Credit Card', 'TRX007'),
(8, 8, 'Plan Trimestral', '2024-04-01', 149.99, 'USD', 'PayPal', 'TRX008'),
(9, 9, 'Plan Mensual', '2024-08-15', 49.99, 'USD', 'Credit Card', 'TRX009'),
(10, 10, 'Plan Anual', '2024-02-01', 599.99, 'USD', 'Credit Card', 'TRX010');

-- Poblar la tabla Goals
INSERT INTO Goals (UserId, Description, TargetValue, CurrentValue, StartDate, TargetDate, Status)
VALUES 
(1, 'Perder 5 kg de peso.', 70.00, 75.00, '2024-09-01', '2024-12-01', 'In Progress'),
(2, 'Aumentar 5 kg de músculo.', 80.00, 75.00, '2024-08-01', '2024-12-31', 'In Progress'),
(3, 'Correr 5 km en menos de 25 minutos.', NULL, NULL, '2024-09-15', '2024-10-15', 'Pending'),
(4, 'Levantar 100 kg en press de banca.', 100.00, 90.00, '2024-09-01', '2024-10-01', 'In Progress'),
(5, 'Reducir grasa corporal al 10%.', 10.00, 15.00, '2024-07-01', '2024-12-01', 'In Progress'),
(6, 'Aumentar flexibilidad general.', NULL, NULL, '2024-09-01', '2024-10-01', 'Pending'),
(7, 'Correr una maratón.', NULL, NULL, '2024-08-01', '2024-11-01', 'Pending'),
(8, 'Mejorar movilidad en articulaciones.', NULL, NULL, '2024-09-15', '2024-11-15', 'Pending'),
(9, 'Mejorar resistencia cardiovascular.', NULL, NULL, '2024-09-01', '2024-12-01', 'In Progress'),
(10, 'Aumentar la fuerza general.', NULL, NULL, '2024-08-25', '2024-12-01', 'In Progress');

-- Poblar la tabla Notifications
INSERT INTO Notifications (UserId, Title, Message, IsRead)
VALUES 
(1, 'Nueva rutina disponible', 'Tu nueva rutina de entrenamiento está lista para comenzar.', FALSE),
(2, 'Recordatorio de pago', 'Tienes una factura pendiente de pago para el plan anual.', TRUE),
(3, 'Actualización de progreso', 'Has alcanzado el 50% de tu objetivo de peso.', FALSE),
(4, 'Nueva meta establecida', 'Tu nueva meta de fuerza ha sido registrada.', TRUE),
(5, 'Pago confirmado', 'Tu pago para el plan mensual ha sido confirmado.', TRUE),
(6, 'Suscripción próxima a vencer', 'Tu suscripción anual está a punto de vencer.', FALSE),
(7, 'Objetivo cumplido', 'Has completado tu objetivo de aumentar músculo.', TRUE),
(8, 'Plan de entrenamiento actualizado', 'Tu plan de entrenamiento se ha actualizado con nuevos ejercicios.', FALSE),
(9, 'Progreso de la meta', 'Estás a 10% de cumplir tu objetivo de resistencia.', FALSE),
(10, 'Pago realizado con éxito', 'Tu pago para el plan semestral ha sido registrado.', TRUE);


-- Insertar registros en la tabla ExerciseLibrary
INSERT INTO ExerciseLibrary (ExerciseName, Description, VideoUrl, Category)
VALUES 
('Sentadillas', 'Ejercicio para fortalecer las piernas.', 'https://example.com/videos/sentadillas', 'Piernas'),
('Press de banca', 'Ejercicio para fortalecer el pecho.', 'https://example.com/videos/press_banca', 'Pecho'),
('Deadlift', 'Ejercicio para fortalecer la espalda.', 'https://example.com/videos/deadlift', 'Espalda'),
('Planchas', 'Ejercicio para fortalecer el abdomen.', 'https://example.com/videos/planchas', 'Abdomen'),
('Flexiones', 'Ejercicio para fortalecer los brazos.', 'https://example.com/videos/flexiones', 'Brazos'),
('Burpees', 'Ejercicio cardiovascular de cuerpo completo.', 'https://example.com/videos/burpees', 'Cardio'),
('Lunges', 'Ejercicio para fortalecer las piernas.', 'https://example.com/videos/lunges', 'Piernas'),
('Dominadas', 'Ejercicio para fortalecer la espalda y los brazos.', 'https://example.com/videos/dominadas', 'Espalda'),
('Bicicleta estática', 'Ejercicio cardiovascular de bajo impacto.', 'https://example.com/videos/bicicleta_estatica', 'Cardio'),
('Elíptica', 'Ejercicio cardiovascular de bajo impacto.', 'https://example.com/videos/eliptica', 'Cardio');