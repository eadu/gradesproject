--Get number of students per major
SELECT MAJOR, COUNT(MAJOR) AS TOTALENROLLED
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email]
GROUP BY MAJOR
ORDER BY TOTALENROLLED DESC

-- HW AVGS SCORE BY MAJORS
SELECT MAJOR, AVG(HW1) AS Hw1Avg, AVG(HW2) AS Hw2Avg, AVG(HW3) AS Hw3Avg, AVG(HW4) AS Hw4Avg, AVG(HW5) AS Hw5Avg
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email] 
GROUP BY MAJOR
ORDER BY Hw1Avg DESC, Hw2Avg DESC, Hw3Avg DESC, Hw4Avg DESC, Hw5Avg DESC


-- PROJECT AVGS SCORE BY MAJORS
SELECT MAJOR, AVG(Project1) AS Project1Avg, AVG(Project2) AS Project2Avg, AVG(Project3) AS Project3Avg, AVG(Project4) AS Project4Avg, AVG(Project5) AS Project5Avg
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email] 
GROUP BY MAJOR
ORDER BY Project1Avg DESC, Project2Avg DESC, Project3Avg DESC, Project4Avg DESC, Project5Avg DESC

-- FINAL GRADE AVGS BY MAJORS
SELECT MAJOR, AVG(Grade) AS AvgGrade
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email]
GROUP BY MAJOR
ORDER BY AvgGrade DESC


--Get number of students per major
SELECT CLASSIFICATION, COUNT(MAJOR) AS TOTALENROLLED
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email]
GROUP BY CLASSIFICATION
ORDER BY TOTALENROLLED DESC

-- HW AVGS SCORE BY MAJORS
SELECT CLASSIFICATION, AVG(HW1) AS Hw1Avg, AVG(HW2) AS Hw2Avg, AVG(HW3) AS Hw3Avg, AVG(HW4) AS Hw4Avg, AVG(HW5) AS Hw5Avg, 
AVG(HW1 + HW2 + HW3 + HW4 + HW5) / 5 AS HWAVG
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email] 
GROUP BY CLASSIFICATION
ORDER BY HWAVG DESC


-- PROJECT AVGS SCORE BY MAJORS
SELECT CLASSIFICATION, AVG(Project1) AS Project1Avg, AVG(Project2) AS Project2Avg, AVG(Project3) AS Project3Avg, AVG(Project4) AS Project4Avg, AVG(Project5) AS Project5Avg,
AVG(Project1 + Project2 + Project3 + Project4 + Project5) / 5 AS PROJAVG
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email] 
GROUP BY CLASSIFICATION
ORDER BY PROJAVG DESC

-- FINAL GRADE AVGS BY MAJORS
SELECT CLASSIFICATION, AVG(Grade) AS AvgGrade
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email]
GROUP BY CLASSIFICATION
ORDER BY AvgGrade DESC

--
SELECT CLASSIFICATION, AVG(Project1 + Project2 + Project3 + Project4 + Project5) / 5 AS PROJAVG,
AVG(HW1 + HW2 + HW3 + HW4 + HW5) / 5 AS HWAVG, AVG(Grade) AS AvgGrade
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email]
GROUP BY CLASSIFICATION
ORDER BY AvgGrade DESC, PROJAVG DESC, HWAVG DESC

-- TOP 10 STUDENTS
SELECT TOP 10
[Name], [MAJOR], [Grade]
FROM [PortfolioProject]..[Grades] grades
JOIN [PortfolioProject]..[Majors] majors
    ON [majors].[EMAIL] = [grades].[Email]
ORDER BY Grade DESC
