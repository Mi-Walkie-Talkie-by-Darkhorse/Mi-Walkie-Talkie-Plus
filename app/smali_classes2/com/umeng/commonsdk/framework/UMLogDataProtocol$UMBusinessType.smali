.class public final enum Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;
.super Ljava/lang/Enum;
.source "UMLogDataProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/framework/UMLogDataProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UMBusinessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

.field public static final enum U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

.field public static final enum U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

.field public static final enum U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    const-string v1, "U_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    .line 2
    new-instance v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    const-string v3, "U_INTERNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    .line 3
    new-instance v3, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    const-string v5, "U_ZeroEnv"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->$VALUES:[Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;
    .locals 1

    .line 1
    const-class v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->$VALUES:[Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    return-object v0
.end method
