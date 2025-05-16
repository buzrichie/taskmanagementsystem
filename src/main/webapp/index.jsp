<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to NovaTech Task Manager</title>
    <link rel="stylesheet" href="css/style-index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header class="header">
        <div class="logo">
            <i class="fas fa-tasks"></i>
            <span>NovaTech</span>
        </div>
        <nav class="nav">
            <ul>
                <li><a href="#features">Features</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="login.jsp" class="nav-btn">Login</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="hero">
            <div class="hero-content">
                <h1>Welcome to NovaTech Task Manager</h1>
                <p class="hero-subtitle">Streamline your workflow, boost productivity, and manage tasks with ease.</p>
                <div class="cta-buttons">
                    <a href="tasks" class="btn btn-primary">
                        <i class="fas fa-th-large"></i> Go to Dashboard
                    </a>
                    <a href="signup.jsp" class="btn btn-secondary">
                        <i class="fas fa-user-plus"></i> Sign Up Free
                    </a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://via.placeholder.com/600x400" alt="Task Management Dashboard">
            </div>
        </section>

        <section id="features" class="features">
            <h2>Why Choose NovaTech Task Manager?</h2>
            <div class="feature-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-check-circle"></i>
                    </div>
                    <h3>Task Tracking</h3>
                    <p>Create, organize, and track tasks with intuitive interfaces and real-time updates.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h3>Team Collaboration</h3>
                    <p>Share tasks, assign responsibilities, and collaborate seamlessly with your team.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h3>Progress Tracking</h3>
                    <p>Monitor project progress with visual dashboards and comprehensive reporting tools.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-bell"></i>
                    </div>
                    <h3>Notifications</h3>
                    <p>Stay updated with timely reminders and notifications for upcoming deadlines.</p>
                </div>
            </div>
        </section>

        <section class="testimonial">
            <div class="testimonial-content">
                <div class="quote">
                    <i class="fas fa-quote-left"></i>
                    <p>NovaTech Task Manager has transformed how our team collaborates. We've increased productivity by 35% since implementation.</p>
                    <div class="testimonial-author">
                        <img src="https://via.placeholder.com/60" alt="Jane Smith">
                        <div>
                            <h4>Jane Smith</h4>
                            <p>Project Manager, TechCorp</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="cta-section">
            <h2>Ready to boost your productivity?</h2>
            <p>Join thousands of professionals who trust NovaTech Task Manager</p>
            <a href="tasks" class="btn btn-primary">Get Started Now</a>
        </section>
    </main>

    <footer id="contact" class="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h3>NovaTech Task Manager</h3>
                <p>Simplifying task management for teams and individuals since 2023.</p>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#features">Features</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="pricing.jsp">Pricing</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p><i class="fas fa-envelope"></i> support@novatech.com</p>
                <p><i class="fas fa-phone"></i> +1 (555) 123-4567</p>
                <p><i class="fas fa-map-marker-alt"></i> 123 Tech Street, San Francisco, CA</p>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2023 NovaTech Task Manager. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>