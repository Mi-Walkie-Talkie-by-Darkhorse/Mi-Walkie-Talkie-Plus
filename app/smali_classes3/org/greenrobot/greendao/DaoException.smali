.class public Lorg/greenrobot/greendao/DaoException;
.super Landroid/database/SQLException;
.source "DaoException.java"


# static fields
.field private static final serialVersionUID:J = -0x5192a0db69eecaf3L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/greenrobot/greendao/DaoException;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/DaoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not set initial cause"

    invoke-static {v1, v0}, Lorg/greenrobot/greendao/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Initial cause is:"

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
