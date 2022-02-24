.class public Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/w$a;,
        Landroidx/lifecycle/w$d;,
        Landroidx/lifecycle/w$c;,
        Landroidx/lifecycle/w$e;,
        Landroidx/lifecycle/w$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/w$b;

.field private final b:Landroidx/lifecycle/y;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/w$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/w$b;

    .line 7
    iput-object p1, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/y;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/z;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/z;->getViewModelStore()Landroidx/lifecycle/y;

    move-result-object v0

    instance-of v1, p1, Landroidx/lifecycle/g;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/w$b;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroidx/lifecycle/w$d;->a()Landroidx/lifecycle/w$d;

    move-result-object p1

    .line 4
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/v;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/v;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/y;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->a(Ljava/lang/String;)Landroidx/lifecycle/v;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/w$b;

    instance-of p2, p1, Landroidx/lifecycle/w$e;

    if-eqz p2, :cond_0

    .line 7
    check-cast p1, Landroidx/lifecycle/w$e;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/w$e;->a(Landroidx/lifecycle/v;)V

    :cond_0
    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/w$b;

    instance-of v1, v0, Landroidx/lifecycle/w$c;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Landroidx/lifecycle/w$c;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/w$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v0, p2}, Landroidx/lifecycle/w$b;->create(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p2

    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/y;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/y;->a(Ljava/lang/String;Landroidx/lifecycle/v;)V

    return-object p2
.end method
