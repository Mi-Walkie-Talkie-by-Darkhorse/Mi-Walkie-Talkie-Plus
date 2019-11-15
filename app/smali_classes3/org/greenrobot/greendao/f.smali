.class public Lorg/greenrobot/greendao/f;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/greenrobot/greendao/f;->a:I

    iput-object p2, p0, Lorg/greenrobot/greendao/f;->b:Ljava/lang/Class;

    iput-object p3, p0, Lorg/greenrobot/greendao/f;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/greenrobot/greendao/f;->d:Z

    iput-object p5, p0, Lorg/greenrobot/greendao/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/c/i$b;

    const-string v1, "=?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/c/i$b;-><init>(Lorg/greenrobot/greendao/f;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/c/i$b;

    const-string v1, ">?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/c/i$b;-><init>(Lorg/greenrobot/greendao/f;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/c/i$b;

    const-string v1, "<?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/c/i$b;-><init>(Lorg/greenrobot/greendao/f;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;
    .locals 2

    new-instance v0, Lorg/greenrobot/greendao/c/i$b;

    const-string v1, ">=?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/c/i$b;-><init>(Lorg/greenrobot/greendao/f;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
