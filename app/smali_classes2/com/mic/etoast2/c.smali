.class public Lcom/mic/etoast2/c;
.super Ljava/lang/Object;
.source "Toast.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/mic/etoast2/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/mic/etoast2/c;->a:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, p2, p3}, Lcom/mic/etoast2/a;->c(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/mic/etoast2/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mic/etoast2/c;->a:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/mic/etoast2/b;->b()Lcom/mic/etoast2/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mic/etoast2/b;->a()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Lcom/mic/etoast2/b;->b()Lcom/mic/etoast2/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mic/etoast2/b;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/mic/etoast2/a;->c(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/mic/etoast2/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mic/etoast2/c;->a:Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/mic/etoast2/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/mic/etoast2/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/mic/etoast2/c;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mic/etoast2/c;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mic/etoast2/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/mic/etoast2/a;

    invoke-virtual {v0}, Lcom/mic/etoast2/a;->b()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mic/etoast2/c;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mic/etoast2/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/mic/etoast2/a;

    invoke-virtual {v0, p1}, Lcom/mic/etoast2/a;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mic/etoast2/c;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mic/etoast2/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/mic/etoast2/a;

    invoke-virtual {v0}, Lcom/mic/etoast2/a;->e()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
