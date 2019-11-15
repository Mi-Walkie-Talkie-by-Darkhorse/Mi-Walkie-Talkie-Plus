.class public Lorg/greenrobot/greendao/c/d;
.super Lorg/greenrobot/greendao/c/a;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/c/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final f:Lorg/greenrobot/greendao/c/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/c/d$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/c/d$a;Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/c/d$a",
            "<TT;>;",
            "Lorg/greenrobot/greendao/a",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lorg/greenrobot/greendao/c/a;-><init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/c/d;->f:Lorg/greenrobot/greendao/c/d$a;

    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/c/d$a;Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/c/d$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/greendao/c/d;-><init>(Lorg/greenrobot/greendao/c/d$a;Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static a(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/c/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/a",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/c/d",
            "<TT2;>;"
        }
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/c/d$a;

    invoke-static {p2}, Lorg/greenrobot/greendao/c/d;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/greenrobot/greendao/c/d$a;-><init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/c/d$1;)V

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/d$a;->a()Lorg/greenrobot/greendao/c/a;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/c/d;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-virtual {p0}, Lorg/greenrobot/greendao/c/d;->a()V

    iget-object v0, p0, Lorg/greenrobot/greendao/c/d;->a:Lorg/greenrobot/greendao/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->getDatabase()Lorg/greenrobot/greendao/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/c/d;->a:Lorg/greenrobot/greendao/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->getDatabase()Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/c/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/c/d;->d:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->a()V

    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/greendao/c/d;->a:Lorg/greenrobot/greendao/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/a;->getDatabase()Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    iget-object v2, p0, Lorg/greenrobot/greendao/c/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/c/d;->d:[Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lorg/greenrobot/greendao/a/a;->b()V

    throw v0
.end method
