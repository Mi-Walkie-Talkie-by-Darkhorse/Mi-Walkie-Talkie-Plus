.class public final enum Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum c:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field public static final enum d:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

.field private static final synthetic e:[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->a:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 2
    new-instance v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const-string v3, "BASIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->b:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 3
    new-instance v3, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const-string v5, "HEADERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->c:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 4
    new-instance v5, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const-string v7, "BODY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->d:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->e:[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    .line 1
    const-class v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->e:[Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-object v0
.end method
