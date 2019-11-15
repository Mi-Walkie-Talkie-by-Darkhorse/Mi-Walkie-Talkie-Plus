.class public Lorg/greenrobot/greendao/async/c;
.super Ljava/lang/Object;
.source "AsyncSession.java"


# instance fields
.field private final a:Lorg/greenrobot/greendao/c;

.field private final b:Lorg/greenrobot/greendao/async/a;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/async/c;->a:Lorg/greenrobot/greendao/c;

    new-instance v0, Lorg/greenrobot/greendao/async/a;

    invoke-direct {v0}, Lorg/greenrobot/greendao/async/a;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/async/c;->b:Lorg/greenrobot/greendao/async/a;

    return-void
.end method
