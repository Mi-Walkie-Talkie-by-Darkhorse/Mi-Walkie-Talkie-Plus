.class public final enum Lokhttp3/logging/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/logging/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v3, 0x2

    const-string v4, "HEADERS"

    invoke-direct {v0, v4, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v4, 0x3

    const-string v5, "BODY"

    invoke-direct {v0, v5, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const/4 v5, 0x4

    new-array v5, v5, [Lokhttp3/logging/HttpLoggingInterceptor$Level;

    sget-object v6, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    aput-object v6, v5, v1

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v5, v2

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lokhttp3/logging/HttpLoggingInterceptor$Level;->$VALUES:[Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    const-class v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->$VALUES:[Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lokhttp3/logging/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method
