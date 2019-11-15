.class public Lcom/tencent/connect/auth/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/connect/auth/b;

.field static final synthetic d:Z

.field private static e:I


# instance fields
.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/auth/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/connect/auth/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/connect/auth/b;->d:Z

    sput v1, Lcom/tencent/connect/auth/b;->e:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/auth/b;->b:Ljava/util/HashMap;

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    iput-object v0, p0, Lcom/tencent/connect/auth/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/tencent/connect/auth/b;
    .locals 1

    sget-object v0, Lcom/tencent/connect/auth/b;->a:Lcom/tencent/connect/auth/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/connect/auth/b;

    invoke-direct {v0}, Lcom/tencent/connect/auth/b;-><init>()V

    sput-object v0, Lcom/tencent/connect/auth/b;->a:Lcom/tencent/connect/auth/b;

    :cond_0
    sget-object v0, Lcom/tencent/connect/auth/b;->a:Lcom/tencent/connect/auth/b;

    return-object v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/tencent/connect/auth/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/connect/auth/b;->e:I

    return v0
.end method


# virtual methods
.method public a(Lcom/tencent/connect/auth/b$a;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/tencent/connect/auth/b;->b()I

    move-result v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/connect/auth/b;->b:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v5, v6

    aget-char v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
