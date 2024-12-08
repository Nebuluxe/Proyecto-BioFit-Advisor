-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS db_biofitadvisor;
USE db_biofitadvisor;

-- Tabla para almacenar los usuarios
CREATE TABLE Users (
    UserId INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Phone VARCHAR(20),
    CreatedBy INT,
    CreationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ModifiedBy INT,
    ModificationDate DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Status BOOLEAN NOT NULL DEFAULT TRUE
);

-- Tabla para el plan de entrenamiento
CREATE TABLE Plan (
    PlanId INT PRIMARY KEY AUTO_INCREMENT,
    UserId INT NOT NULL,
    Name VARCHAR(255) NOT NULL,  -- Nombre del plan
    Language ENUM('es', 'en') NOT NULL,  -- Lenguaje del plan
    Description TEXT NOT NULL,  -- Descripción del plan
    Status BOOLEAN NOT NULL,  -- Estado si el AI fue capaz de generar un plan válido
    NumberOfWeeks INT NOT NULL,  -- Número de semanas que durará el plan
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

-- Tabla para la planificación de los planes
CREATE TABLE PlanSchedule (
    ScheduleId INT PRIMARY KEY AUTO_INCREMENT,
    PlanId INT NOT NULL,
    StartDate DATE NOT NULL,  -- Fecha de inicio del plan
    EndDate DATE,  -- Fecha de finalización del plan, calculada en base a las semanas
    Status ENUM('Active', 'Completed', 'Pending') DEFAULT 'Pending',  -- Estado del plan
    FOREIGN KEY (PlanId) REFERENCES Plan(PlanId)
);

-- Tabla para los ejercicios que se realizarán cada día
CREATE TABLE Exercise (
    ExerciseId INT PRIMARY KEY AUTO_INCREMENT,
    PlanId INT NOT NULL,
    DayNumber INT NOT NULL,  -- Día de la semana (1 a 7)
    ExerciseIdentifier VARCHAR(255) NOT NULL,  -- Identificador del ejercicio
    ExerciseSubIdentifier VARCHAR(255) NOT NULL,  -- Subidentificador del ejercicio
    Duration INT CHECK(Duration >= 0),  -- Duración en segundos (si aplica)
    Repetitions INT CHECK(Repetitions >= 0),  -- Repeticiones (si aplica)
    Sets INT CHECK(Sets >= 0),  -- Series de cada ejercicio
    WeightPercentage VARCHAR(50),  -- Porcentaje de peso aplicado
    FOREIGN KEY (PlanId) REFERENCES Plan(PlanId)
);

-- Tabla para las recomendaciones de descanso
CREATE TABLE Recommendations (
    RecommendationId INT PRIMARY KEY AUTO_INCREMENT,
    PlanId INT NOT NULL,
    Recommendation TEXT NOT NULL,  -- Recomendación de descanso
    FOREIGN KEY (PlanId) REFERENCES Plan(PlanId)
);

-- Tabla para los consejos nutricionales
CREATE TABLE NutritionalAdvice (
    AdviceId INT PRIMARY KEY AUTO_INCREMENT,
    PlanId INT NOT NULL,
    Protein TEXT,  -- Consejo sobre el consumo de proteína
    Carbohidratos TEXT,  -- Consejo sobre carbohidratos
    Fat TEXT,  -- Consejo sobre grasas
    Hydration TEXT,  -- Consejo sobre hidratación
    Supplements TEXT,  -- Consejo sobre suplementos
    FOREIGN KEY (PlanId) REFERENCES Plan(PlanId)
);

-- Tabla para las precauciones a seguir durante los ejercicios
CREATE TABLE Precautions (
    PrecautionId INT PRIMARY KEY AUTO_INCREMENT,
    PlanId INT NOT NULL,
    Precaution TEXT NOT NULL,  -- Precaución
    FOREIGN KEY (PlanId) REFERENCES Plan(PlanId)
);

-- Tabla para la suscripción del usuario
CREATE TABLE UserSubscription (
    UserSubscriptionId INT PRIMARY KEY AUTO_INCREMENT,
    UserId INT NOT NULL,
    SubscriptionPlanName VARCHAR(100) NOT NULL,
    SubscriptionStartDate DATE,
    SubscriptionEndDate DATE,
    IsActive BOOLEAN NOT NULL DEFAULT TRUE,
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

-- Tabla para la facturación de los usuarios
CREATE TABLE Billing (
    BillingId INT PRIMARY KEY AUTO_INCREMENT,
    UserId INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    BillingDate DATE,
    DueDate DATE,
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

-- Historial de pagos
CREATE TABLE PaymentHistory (
    PaymentId INT PRIMARY KEY AUTO_INCREMENT,
    BillingId INT NOT NULL,
    UserId INT NOT NULL,
    PlanName VARCHAR(100) NOT NULL,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    Currency VARCHAR(20),
    PaymentMethod VARCHAR(50),
    TransactionId VARCHAR(100),
    FOREIGN KEY (BillingId) REFERENCES Billing(BillingId),
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

-- Tabla de objetivos
CREATE TABLE Goals (
    GoalId INT PRIMARY KEY AUTO_INCREMENT,
    UserId INT NOT NULL,
    Description TEXT,
    TargetValue DECIMAL(10, 2),
    CurrentValue DECIMAL(10, 2),
    StartDate DATE,
    TargetDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

-- Tabla para las notificaciones de los usuarios
CREATE TABLE Notifications (
    NotificationId INT PRIMARY KEY AUTO_INCREMENT,
    UserId INT NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Message TEXT,
    NotificationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    IsRead BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

-- Tabla para la biblioteca de ejercicios de referencia
CREATE TABLE ExerciseLibrary (
    ExerciseId INT PRIMARY KEY AUTO_INCREMENT,
    ExerciseName VARCHAR(100) NOT NULL,  -- Nombre del ejercicio
    Description TEXT,  -- Descripción del ejercicio
    VideoUrl VARCHAR(255),  -- URL de video del ejercicio
    Category VARCHAR(50)  -- Categoría del ejercicio
);
