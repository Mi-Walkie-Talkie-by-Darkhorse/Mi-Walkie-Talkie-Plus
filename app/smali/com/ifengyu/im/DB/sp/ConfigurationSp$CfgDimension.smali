.class public final enum Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;
.super Ljava/lang/Enum;
.source "ConfigurationSp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/DB/sp/ConfigurationSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CfgDimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

.field public static final enum NOTIFICATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

.field public static final enum SESSIONTALK:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

.field public static final enum SESSIONTOP:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

.field public static final enum SOUND:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

.field public static final enum VIBRATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->NOTIFICATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    const-string v1, "SOUND"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SOUND:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    const-string v1, "VIBRATION"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->VIBRATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    const-string v1, "SESSIONTOP"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTOP:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    const-string v1, "SESSIONTALK"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTALK:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->NOTIFICATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SOUND:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->VIBRATION:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTOP:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->SESSIONTALK:Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->$VALUES:[Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;
    .locals 1

    const-class v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->$VALUES:[Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    invoke-virtual {v0}, [Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/DB/sp/ConfigurationSp$CfgDimension;

    return-object v0
.end method
