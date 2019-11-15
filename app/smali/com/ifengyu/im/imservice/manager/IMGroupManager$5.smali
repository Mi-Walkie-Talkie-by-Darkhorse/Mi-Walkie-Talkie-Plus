.class Lcom/ifengyu/im/imservice/manager/IMGroupManager$5;
.super Ljava/lang/Object;
.source "IMGroupManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMGroupManager;->getNormalGroupSortedList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ifengyu/im/DB/entity/GroupEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMGroupManager$5;->this$0:Lcom/ifengyu/im/imservice/manager/IMGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ifengyu/im/DB/entity/GroupEntity;Lcom/ifengyu/im/DB/entity/GroupEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    check-cast p2, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/imservice/manager/IMGroupManager$5;->compare(Lcom/ifengyu/im/DB/entity/GroupEntity;Lcom/ifengyu/im/DB/entity/GroupEntity;)I

    move-result v0

    return v0
.end method
