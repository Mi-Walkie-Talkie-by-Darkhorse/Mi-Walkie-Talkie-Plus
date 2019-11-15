.class public final enum Lcom/mi/mimsgsdk/utils/LogType;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/mimsgsdk/utils/LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/mimsgsdk/utils/LogType;

.field public static final enum init:Lcom/mi/mimsgsdk/utils/LogType;

.field public static final enum msg:Lcom/mi/mimsgsdk/utils/LogType;

.field public static final enum upload:Lcom/mi/mimsgsdk/utils/LogType;

.field public static final enum voip:Lcom/mi/mimsgsdk/utils/LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/mi/mimsgsdk/utils/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/utils/LogType;->init:Lcom/mi/mimsgsdk/utils/LogType;

    new-instance v0, Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "msg"

    invoke-direct {v0, v1, v3}, Lcom/mi/mimsgsdk/utils/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/utils/LogType;->msg:Lcom/mi/mimsgsdk/utils/LogType;

    new-instance v0, Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "voip"

    invoke-direct {v0, v1, v4}, Lcom/mi/mimsgsdk/utils/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    new-instance v0, Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "upload"

    invoke-direct {v0, v1, v5}, Lcom/mi/mimsgsdk/utils/LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mi/mimsgsdk/utils/LogType;

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->init:Lcom/mi/mimsgsdk/utils/LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->msg:Lcom/mi/mimsgsdk/utils/LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->voip:Lcom/mi/mimsgsdk/utils/LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/mimsgsdk/utils/LogType;->upload:Lcom/mi/mimsgsdk/utils/LogType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mi/mimsgsdk/utils/LogType;->$VALUES:[Lcom/mi/mimsgsdk/utils/LogType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/mimsgsdk/utils/LogType;
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/utils/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/utils/LogType;

    return-object v0
.end method

.method public static values()[Lcom/mi/mimsgsdk/utils/LogType;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->$VALUES:[Lcom/mi/mimsgsdk/utils/LogType;

    invoke-virtual {v0}, [Lcom/mi/mimsgsdk/utils/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/mimsgsdk/utils/LogType;

    return-object v0
.end method
