<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e9f46738-b295-4cc2-81b5-488d79fb4d01(xjsnark.membership_merkle)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark" version="0" />
  </languages>
  <imports>
    <import index="tluv" ref="r:497ff602-8d96-4239-8b0f-254445ada898(xjsnark.field_table)" />
    <import index="7dh8" ref="r:09123713-f163-4703-a727-7cf154b91a1d(xjsnark.poseidon)" />
    <import index="w19y" ref="r:e9f46738-b295-4cc2-81b5-488d79fb4d01(xjsnark.membership_merkle)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1225892208569" name="jetbrains.mps.baseLanguage.structure.ShiftLeftExpression" flags="nn" index="1GRDU$" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark">
      <concept id="7495353643810622554" name="xjsnark.structure.JFieldConversion" flags="ng" index="_hXgR">
        <child id="7495353643810622556" name="argument" index="_hXgL" />
        <child id="7495353643810622555" name="jType" index="_hXgQ" />
      </concept>
      <concept id="5462301061293008935" name="xjsnark.structure.JEqualsExpression" flags="ng" index="2_lxnS" />
      <concept id="7553992366106506034" name="xjsnark.structure.JFieldType" flags="ig" index="2D7PWU">
        <reference id="7553992366106506060" name="fieldRec" index="2D7PX4" />
      </concept>
      <concept id="7495353643616961541" name="xjsnark.structure.SingleLineCommentClassMember" flags="ng" index="DJdLC">
        <property id="7495353643619293787" name="text" index="DRO8Q" />
      </concept>
      <concept id="7553992366094736353" name="xjsnark.structure.VerifyStatement" flags="ng" index="2DKZvD">
        <child id="7553992366094744703" name="condition" index="2DKX1R" />
      </concept>
      <concept id="8264408278343476866" name="xjsnark.structure.JNotEqualsExpression" flags="ng" index="2JLfk8" />
      <concept id="8078876767577527548" name="xjsnark.structure.StructDefinition" flags="ig" index="2VwbHx" />
      <concept id="4165393367774947854" name="xjsnark.structure.JUnsignedIntegerType" flags="ig" index="3qc1$W">
        <property id="4165393367774948449" name="bitwidth" index="3qc1Xj" />
      </concept>
      <concept id="8340315132972716924" name="xjsnark.structure.VerifyEqStatement" flags="ng" index="3s6pcg">
        <child id="8340315132972716925" name="exp1" index="3s6pch" />
        <child id="8340315132972716926" name="exp2" index="3s6pci" />
      </concept>
      <concept id="6307611378306596055" name="xjsnark.structure.JBooleanType" flags="ig" index="1QD1ZQ" />
      <concept id="9096502420330357553" name="xjsnark.structure.JUnsignedIntegerConversion" flags="ng" index="3SuevK">
        <child id="9096502420330357585" name="argument" index="3Sueug" />
        <child id="9096502420330357558" name="jType" index="3SuevR" />
      </concept>
      <concept id="6238098797407520605" name="xjsnark.structure.BitsOp" flags="ng" index="1VPAEj" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2VwbHx" id="3FDiKWYz72y">
    <property role="TrG5h" value="MerkleAuthPath" />
    <node concept="DJdLC" id="3h4liP5bSpi" role="jymVt">
      <property role="DRO8Q" value="directionSelector chooses the direction of Merkle Path (left or right concatenation)" />
    </node>
    <node concept="DJdLC" id="3h4liP5bX07" role="jymVt">
      <property role="DRO8Q" value="directionSelector also happens to be the index of leaf in the first layer" />
    </node>
    <node concept="312cEg" id="3FDiKWYzc48" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="directionSelector" />
      <property role="3TUv4t" value="false" />
      <node concept="3qc1$W" id="3FDiKWYzc44" role="1tU5fm">
        <property role="3qc1Xj" value="64" />
      </node>
      <node concept="3Tm1VV" id="LEx6Grj4pa" role="1B3o_S" />
    </node>
    <node concept="DJdLC" id="3h4liP5bSG4" role="jymVt">
      <property role="DRO8Q" value="digests stores all the hashes in a Merkle Path" />
    </node>
    <node concept="312cEg" id="6GTEY6fYmeS" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="digests" />
      <property role="3TUv4t" value="false" />
      <node concept="10Q1$e" id="6GTEY6fYmeL" role="1tU5fm">
        <node concept="2D7PWU" id="6GTEY6fYm62" role="10Q1$1">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="3Tm1VV" id="LEx6Grj4hH" role="1B3o_S" />
      <node concept="2ShNRf" id="LEx6GrZ99Z" role="33vP2m">
        <node concept="3$_iS1" id="LEx6GrZ9a0" role="2ShVmc">
          <node concept="3$GHV9" id="LEx6GrZ9a1" role="3$GQph">
            <node concept="10M0yZ" id="LEx6GrZ9a2" role="3$I4v7">
              <ref role="1PxDUh" node="2NUrvUr11zd" resolve="non_membership" />
              <ref role="3cqZAo" node="2NUrvUuvOBt" resolve="HEIGHT" />
            </node>
          </node>
          <node concept="2D7PWU" id="LEx6GrZ9a3" role="3$_nBY">
            <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3FDiKWYzcqo" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5bSZd" role="jymVt">
      <property role="DRO8Q" value="initialization" />
    </node>
    <node concept="3clFbW" id="3FDiKWYzcmh" role="jymVt">
      <node concept="3cqZAl" id="3FDiKWYzcmi" role="3clF45" />
      <node concept="3clFbS" id="3FDiKWYzcmj" role="3clF47">
        <node concept="3clFbF" id="6GTEY6hE6sR" role="3cqZAp">
          <node concept="37vLTI" id="6GTEY6hE6tM" role="3clFbG">
            <node concept="2ShNRf" id="6GTEY6hE6uN" role="37vLTx">
              <node concept="3$_iS1" id="6GTEY6hE6xW" role="2ShVmc">
                <node concept="3$GHV9" id="6GTEY6hE6xY" role="3$GQph">
                  <node concept="10M0yZ" id="2NUrvUuvPlm" role="3$I4v7">
                    <ref role="1PxDUh" node="2NUrvUr11zd" resolve="non_membership" />
                    <ref role="3cqZAo" node="2NUrvUuvOBt" resolve="HEIGHT" />
                  </node>
                </node>
                <node concept="2D7PWU" id="6GTEY6hE6xV" role="3$_nBY">
                  <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6GTEY6jMPp$" role="37vLTJ">
              <ref role="3cqZAo" node="6GTEY6fYmeS" resolve="digests" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3FDiKWYzcmB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3h4liP5bThG" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5bT8o" role="jymVt">
      <property role="DRO8Q" value="initialization" />
    </node>
    <node concept="3clFbW" id="5MGqnSkqBqm" role="jymVt">
      <node concept="3cqZAl" id="5MGqnSkqBqn" role="3clF45" />
      <node concept="3clFbS" id="5MGqnSkqBqo" role="3clF47">
        <node concept="3clFbF" id="5MGqnSkqBqp" role="3cqZAp">
          <node concept="37vLTI" id="5MGqnSkqBqq" role="3clFbG">
            <node concept="37vLTw" id="5MGqnSkqBqr" role="37vLTx">
              <ref role="3cqZAo" node="5MGqnSkqBqy" resolve="inputDS" />
            </node>
            <node concept="37vLTw" id="5MGqnSkqBqs" role="37vLTJ">
              <ref role="3cqZAo" node="3FDiKWYzc48" resolve="directionSelector" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MGqnSkqBqt" role="3cqZAp">
          <node concept="37vLTI" id="5MGqnSkqBqu" role="3clFbG">
            <node concept="37vLTw" id="5MGqnSkqBqv" role="37vLTx">
              <ref role="3cqZAo" node="5MGqnSkqBq$" resolve="inputDigests" />
            </node>
            <node concept="37vLTw" id="5MGqnSkqBqw" role="37vLTJ">
              <ref role="3cqZAo" node="6GTEY6fYmeS" resolve="digests" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5MGqnSkqBqx" role="1B3o_S" />
      <node concept="37vLTG" id="5MGqnSkqBqy" role="3clF46">
        <property role="TrG5h" value="inputDS" />
        <node concept="3qc1$W" id="5MGqnSkqBqz" role="1tU5fm">
          <property role="3qc1Xj" value="64" />
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBq$" role="3clF46">
        <property role="TrG5h" value="inputDigests" />
        <node concept="10Q1$e" id="5MGqnSkqBq_" role="1tU5fm">
          <node concept="2D7PWU" id="5MGqnSkqBqA" role="10Q1$1">
            <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NUrvUw_kHB" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5bT$k" role="jymVt">
      <property role="DRO8Q" value="Compute Mekle Root in a verifiable manner using left, path and direction as input" />
    </node>
    <node concept="DJdLC" id="3h4liP5bU0E" role="jymVt">
      <property role="DRO8Q" value="Return the computed Merkle Root" />
    </node>
    <node concept="3clFb_" id="3FDiKWYzdx6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="computeMerkleRoot" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3FDiKWYzdx9" role="3clF47">
        <node concept="3cpWs8" id="3FDiKWYzdCg" role="3cqZAp">
          <node concept="3cpWsn" id="3FDiKWYzdCj" role="3cpWs9">
            <property role="TrG5h" value="directionBits" />
            <node concept="10Q1$e" id="3FDiKWYzdCs" role="1tU5fm">
              <node concept="1QD1ZQ" id="3FDiKWYzdCf" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="3FDiKWYzdEO" role="33vP2m">
              <node concept="37vLTw" id="3FDiKWYzdE1" role="2Oq$k0">
                <ref role="3cqZAo" node="3FDiKWYzc48" resolve="directionSelector" />
              </node>
              <node concept="1VPAEj" id="3FDiKWYzdFH" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FDiKWYzdH4" role="3cqZAp">
          <node concept="3cpWsn" id="3FDiKWYzdH7" role="3cpWs9">
            <property role="TrG5h" value="currentDigest" />
            <node concept="2D7PWU" id="3FDiKWYzdH2" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="37vLTw" id="3FDiKWYzdIE" role="33vP2m">
              <ref role="3cqZAo" node="3FDiKWYzd$S" resolve="leaf" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3FDiKWYzdOE" role="3cqZAp">
          <node concept="3cpWsn" id="3FDiKWYzdOH" role="3cpWs9">
            <property role="TrG5h" value="inputToNextHash" />
            <node concept="10Q1$e" id="3FDiKWYzfJy" role="1tU5fm">
              <node concept="2D7PWU" id="3FDiKWYzdOC" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="2ShNRf" id="3FDiKWYzfTl" role="33vP2m">
              <node concept="3$_iS1" id="3FDiKWYzg1h" role="2ShVmc">
                <node concept="3$GHV9" id="3FDiKWYzg1j" role="3$GQph">
                  <node concept="3cmrfG" id="3FDiKWYzg6t" role="3$I4v7">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="2D7PWU" id="3FDiKWYzg1g" role="3$_nBY">
                  <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3FDiKWYzdQq" role="3cqZAp" />
        <node concept="1Dw8fO" id="3FDiKWYzdS9" role="3cqZAp">
          <node concept="3clFbS" id="3FDiKWYzdSb" role="2LFqv$">
            <node concept="1Dw8fO" id="3FDiKWYzehP" role="3cqZAp">
              <node concept="3clFbS" id="3FDiKWYzehR" role="2LFqv$">
                <node concept="3clFbJ" id="3FDiKWYzecK" role="3cqZAp">
                  <node concept="3clFbS" id="3FDiKWYzecM" role="3clFbx">
                    <node concept="3clFbF" id="3FDiKWYzeg6" role="3cqZAp">
                      <node concept="37vLTI" id="3FDiKWYzegQ" role="3clFbG">
                        <node concept="3K4zz7" id="3FDiKWYzeNv" role="37vLTx">
                          <node concept="37vLTw" id="3FDiKWYzeQ4" role="3K4E3e">
                            <ref role="3cqZAo" node="3FDiKWYzdH7" resolve="currentDigest" />
                          </node>
                          <node concept="AH0OO" id="3FDiKWYzeVY" role="3K4GZi">
                            <node concept="37vLTw" id="3FDiKWYzeZb" role="AHEQo">
                              <ref role="3cqZAo" node="3FDiKWYzdSc" resolve="i" />
                            </node>
                            <node concept="37vLTw" id="6GTEY6jvLsV" role="AHHXb">
                              <ref role="3cqZAo" node="6GTEY6fYmeS" resolve="digests" />
                            </node>
                          </node>
                          <node concept="2d3UOw" id="3FDiKWYzeGA" role="3K4Cdx">
                            <node concept="3cmrfG" id="3FDiKWYzeH3" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="3FDiKWYzeBh" role="3uHU7B">
                              <ref role="3cqZAo" node="3FDiKWYzehS" resolve="j" />
                            </node>
                          </node>
                        </node>
                        <node concept="AH0OO" id="3FDiKWYzgbP" role="37vLTJ">
                          <node concept="37vLTw" id="3FDiKWYzgfn" role="AHEQo">
                            <ref role="3cqZAo" node="3FDiKWYzehS" resolve="j" />
                          </node>
                          <node concept="37vLTw" id="3FDiKWYzeg4" role="AHHXb">
                            <ref role="3cqZAo" node="3FDiKWYzdOH" resolve="inputToNextHash" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="AH0OO" id="3FDiKWYzedV" role="3clFbw">
                    <node concept="37vLTw" id="3FDiKWYzeeF" role="AHEQo">
                      <ref role="3cqZAo" node="3FDiKWYzdSc" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="3FDiKWYzed9" role="AHHXb">
                      <ref role="3cqZAo" node="3FDiKWYzdCj" resolve="directionBits" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="3FDiKWYzf8_" role="9aQIa">
                    <node concept="3clFbS" id="3FDiKWYzf8A" role="9aQI4">
                      <node concept="3clFbF" id="3FDiKWYzfbX" role="3cqZAp">
                        <node concept="37vLTI" id="3FDiKWYzfbY" role="3clFbG">
                          <node concept="3K4zz7" id="3FDiKWYzfbZ" role="37vLTx">
                            <node concept="37vLTw" id="3FDiKWYzfc0" role="3K4E3e">
                              <ref role="3cqZAo" node="3FDiKWYzdH7" resolve="currentDigest" />
                            </node>
                            <node concept="AH0OO" id="3FDiKWYzfc1" role="3K4GZi">
                              <node concept="37vLTw" id="3FDiKWYzfc2" role="AHEQo">
                                <ref role="3cqZAo" node="3FDiKWYzdSc" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="6GTEY6jvLzo" role="AHHXb">
                                <ref role="3cqZAo" node="6GTEY6fYmeS" resolve="digests" />
                              </node>
                            </node>
                            <node concept="3eOVzh" id="3FDiKWYzffk" role="3K4Cdx">
                              <node concept="37vLTw" id="3FDiKWYzfc6" role="3uHU7B">
                                <ref role="3cqZAo" node="3FDiKWYzehS" resolve="j" />
                              </node>
                              <node concept="3cmrfG" id="3FDiKWYzfc5" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                          <node concept="AH0OO" id="3FDiKWYzgiY" role="37vLTJ">
                            <node concept="37vLTw" id="3FDiKWYzgms" role="AHEQo">
                              <ref role="3cqZAo" node="3FDiKWYzehS" resolve="j" />
                            </node>
                            <node concept="37vLTw" id="3FDiKWYzfc7" role="AHHXb">
                              <ref role="3cqZAo" node="3FDiKWYzdOH" resolve="inputToNextHash" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3FDiKWYzehS" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="3FDiKWYzei9" role="1tU5fm" />
                <node concept="3cmrfG" id="3FDiKWYzei$" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="3FDiKWYzeoG" role="1Dwp0S">
                <node concept="37vLTw" id="3FDiKWYzejq" role="3uHU7B">
                  <ref role="3cqZAo" node="3FDiKWYzehS" resolve="j" />
                </node>
                <node concept="3cmrfG" id="3FDiKWYzerm" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
              <node concept="3uNrnE" id="3FDiKWYzezA" role="1Dwrff">
                <node concept="37vLTw" id="3FDiKWYzezC" role="2$L3a6">
                  <ref role="3cqZAo" node="3FDiKWYzehS" resolve="j" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6QM7J$VD0Ot" role="3cqZAp">
              <node concept="37vLTI" id="6QM7J$VD0UZ" role="3clFbG">
                <node concept="2YIFZM" id="6QM7J$VD19_" role="37vLTx">
                  <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
                  <ref role="37wK5l" to="7dh8:LEx6GtB4G1" resolve="poseidon_hash" />
                  <node concept="37vLTw" id="6QM7J$VD1a5" role="37wK5m">
                    <ref role="3cqZAo" node="3FDiKWYzdOH" resolve="inputToNextHash" />
                  </node>
                </node>
                <node concept="37vLTw" id="6QM7J$VD0Or" role="37vLTJ">
                  <ref role="3cqZAo" node="3FDiKWYzdH7" resolve="currentDigest" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3FDiKWYzdSc" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3FDiKWYzdT1" role="1tU5fm" />
            <node concept="3cmrfG" id="3FDiKWYzdTy" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3FDiKWYzdZ3" role="1Dwp0S">
            <node concept="37vLTw" id="3FDiKWYzdTR" role="3uHU7B">
              <ref role="3cqZAo" node="3FDiKWYzdSc" resolve="i" />
            </node>
            <node concept="10M0yZ" id="5OGfKn$8CJD" role="3uHU7w">
              <ref role="1PxDUh" node="2NUrvUr11zd" resolve="non_membership" />
              <ref role="3cqZAo" node="2NUrvUuvOBt" resolve="HEIGHT" />
            </node>
          </node>
          <node concept="3uNrnE" id="3FDiKWYzea8" role="1Dwrff">
            <node concept="37vLTw" id="3FDiKWYzeaa" role="2$L3a6">
              <ref role="3cqZAo" node="3FDiKWYzdSc" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3FDiKWYzhL9" role="3cqZAp">
          <node concept="37vLTw" id="3FDiKWYzhYP" role="3cqZAk">
            <ref role="3cqZAo" node="3FDiKWYzdH7" resolve="currentDigest" />
          </node>
        </node>
      </node>
      <node concept="2D7PWU" id="3FDiKWYzdtl" role="3clF45">
        <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
      </node>
      <node concept="37vLTG" id="3FDiKWYzd$S" role="3clF46">
        <property role="TrG5h" value="leaf" />
        <node concept="2D7PWU" id="3FDiKWYzd$R" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6GTEY6fFfx0" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3FDiKWYzccb" role="jymVt" />
    <node concept="3Tm1VV" id="3FDiKWYz72z" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2NUrvUr11zd">
    <property role="TrG5h" value="non_membership" />
    <node concept="2tJIrI" id="2NUrvUuvOoU" role="jymVt" />
    <node concept="Wx3nA" id="2NUrvUuvOBt" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="HEIGHT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2NUrvUuvOBu" role="1B3o_S" />
      <node concept="10Oyi0" id="2NUrvUuvOBv" role="1tU5fm" />
      <node concept="3cmrfG" id="2NUrvUuvOBw" role="33vP2m">
        <property role="3cmrfH" value="21" />
      </node>
    </node>
    <node concept="2tJIrI" id="2NUrvUuvOwb" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5bZL7" role="jymVt">
      <property role="DRO8Q" value="non_membership proof function" />
    </node>
    <node concept="DJdLC" id="3h4liP5c0jl" role="jymVt">
      <property role="DRO8Q" value="It uses F_p[8] as its input_domain_name's format and takes MerkleAuthPath structure as its input format" />
    </node>
    <node concept="2YIFZL" id="2NUrvU$eYBr" role="jymVt">
      <property role="TrG5h" value="check_membership_path" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2NUrvU$eYBs" role="3clF47">
        <node concept="3clFbH" id="2NUrvU$eYBH" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5bWfh" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bWfj" role="3SKWNk">
            <property role="3SKdUp" value="compute the hash of input_domain_name in the first layer" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5bWl9" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bWlb" role="3SKWNk">
            <property role="3SKdUp" value="The needs an 8-input Poseidon Hash since domain name has a larger size" />
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvU$eYBI" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvU$eYBJ" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="2D7PWU" id="2NUrvU$eYBK" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2NUrvU$eYBL" role="3cqZAp">
          <node concept="37vLTI" id="2NUrvU$eYBM" role="3clFbG">
            <node concept="2YIFZM" id="2NUrvU$eYBN" role="37vLTx">
              <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
              <ref role="37wK5l" to="7dh8:1y50vKi9QC$" resolve="poseidon_hash_8" />
              <node concept="37vLTw" id="2NUrvU$eYBO" role="37wK5m">
                <ref role="3cqZAo" node="2NUrvU$eYCV" resolve="input_domain_name" />
              </node>
            </node>
            <node concept="37vLTw" id="2NUrvU$eYBP" role="37vLTJ">
              <ref role="3cqZAo" node="2NUrvU$eYBJ" resolve="leaf" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NUrvU$eYBQ" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5bWrD" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bWrF" role="3SKWNk">
            <property role="3SKdUp" value="compute the Merkle Root using left_left and right_left verifiably" />
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvU$eYBR" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvU$eYBS" role="3cpWs9">
            <property role="TrG5h" value="left_root" />
            <node concept="2D7PWU" id="2NUrvU$eYBT" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="2NUrvU$eYBU" role="33vP2m">
              <node concept="liA8E" id="2NUrvU$eYBV" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="2NUrvU$eYBW" role="37wK5m">
                  <ref role="3cqZAo" node="2NUrvU$eYD0" resolve="left_leaf" />
                </node>
              </node>
              <node concept="37vLTw" id="2NUrvU$eZBL" role="2Oq$k0">
                <ref role="3cqZAo" node="2NUrvU$eYD4" resolve="authPath_left" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvU$eZGt" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvU$eZGu" role="3cpWs9">
            <property role="TrG5h" value="right_root" />
            <node concept="2D7PWU" id="2NUrvU$eZGv" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="2NUrvU$eZGw" role="33vP2m">
              <node concept="liA8E" id="2NUrvU$eZGx" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="2NUrvU$eZP4" role="37wK5m">
                  <ref role="3cqZAo" node="2NUrvU$eYD2" resolve="right_leaf" />
                </node>
              </node>
              <node concept="37vLTw" id="2NUrvU$eZOi" role="2Oq$k0">
                <ref role="3cqZAo" node="2NUrvU$eYDc" resolve="authPath_right" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NUrvU$eZDR" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5bWuB" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bWuD" role="3SKWNk">
            <property role="3SKdUp" value="compare that roots are the same (public input root, roots computed from left and right)" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5bW$D" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bW$F" role="3SKWNk">
            <property role="3SKdUp" value="It can prove that both left_leaf and right_leaf exist in Merkle Tree" />
          </node>
        </node>
        <node concept="3s6pcg" id="2NUrvU$eYC6" role="3cqZAp">
          <node concept="37vLTw" id="2NUrvU$eYC7" role="3s6pch">
            <ref role="3cqZAo" node="2NUrvU$eYBS" resolve="left_root" />
          </node>
          <node concept="37vLTw" id="2NUrvU$eYC8" role="3s6pci">
            <ref role="3cqZAo" node="2NUrvU$eYCY" resolve="root" />
          </node>
        </node>
        <node concept="3s6pcg" id="2NUrvU$eYC9" role="3cqZAp">
          <node concept="37vLTw" id="2NUrvU$eZPI" role="3s6pch">
            <ref role="3cqZAo" node="2NUrvU$eZGu" resolve="right_root" />
          </node>
          <node concept="37vLTw" id="2NUrvU$eYCb" role="3s6pci">
            <ref role="3cqZAo" node="2NUrvU$eYCY" resolve="root" />
          </node>
        </node>
        <node concept="3clFbH" id="2NUrvU$eYCc" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5bWEY" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bWF0" role="3SKWNk">
            <property role="3SKdUp" value="Prove that left_leaf and right_leaf are adjacent!" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5bWL8" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bWLa" role="3SKWNk">
            <property role="3SKdUp" value="The directionSelector is exactly the same as leaf's index position in first layer" />
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvU$eYCd" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvU$eYCe" role="3cpWs9">
            <property role="TrG5h" value="one" />
            <node concept="3qc1$W" id="2NUrvU$eYCf" role="1tU5fm">
              <property role="3qc1Xj" value="8" />
            </node>
            <node concept="3cmrfG" id="2NUrvU$eYCg" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3s6pcg" id="2NUrvU$eYCh" role="3cqZAp">
          <node concept="3cpWs3" id="2NUrvU$eYCi" role="3s6pch">
            <node concept="2OqwBi" id="LEx6GtBkjK" role="3uHU7B">
              <node concept="37vLTw" id="2NUrvU$eZQ9" role="2Oq$k0">
                <ref role="3cqZAo" node="2NUrvU$eYD4" resolve="authPath_left" />
              </node>
              <node concept="2OwXpG" id="7LvGvKSr0TC" role="2OqNvi">
                <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
              </node>
            </node>
            <node concept="37vLTw" id="2NUrvU$eYCm" role="3uHU7w">
              <ref role="3cqZAo" node="2NUrvU$eYCe" resolve="one" />
            </node>
          </node>
          <node concept="2OqwBi" id="2NUrvU$eYCn" role="3s6pci">
            <node concept="2OwXpG" id="7LvGvKSr1MT" role="2OqNvi">
              <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
            </node>
            <node concept="37vLTw" id="2NUrvU$eZR2" role="2Oq$k0">
              <ref role="3cqZAo" node="2NUrvU$eYDc" resolve="authPath_right" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NUrvU$eYCq" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5bXlE" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bXlG" role="3SKWNk">
            <property role="3SKdUp" value="Prove that left_leaf is indead smaller than right_leaf" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5bXsb" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5bXsd" role="3SKWNk">
            <property role="3SKdUp" value="We can only compare uint, so we need such convert" />
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvU$eYCr" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvU$eYCs" role="3cpWs9">
            <property role="TrG5h" value="left_leaf_uint" />
            <node concept="3qc1$W" id="2NUrvU$eYCt" role="1tU5fm">
              <property role="3qc1Xj" value="256" />
            </node>
            <node concept="3SuevK" id="2NUrvU$eYCu" role="33vP2m">
              <node concept="3qc1$W" id="2NUrvU$eYCv" role="3SuevR">
                <property role="3qc1Xj" value="256" />
              </node>
              <node concept="37vLTw" id="2NUrvU$eYCw" role="3Sueug">
                <ref role="3cqZAo" node="2NUrvU$eYD0" resolve="left_leaf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvU$eYCx" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvU$eYCy" role="3cpWs9">
            <property role="TrG5h" value="right_leaf_uint" />
            <node concept="3qc1$W" id="2NUrvU$eYCz" role="1tU5fm">
              <property role="3qc1Xj" value="256" />
            </node>
            <node concept="3SuevK" id="2NUrvU$eYC$" role="33vP2m">
              <node concept="3qc1$W" id="2NUrvU$eYC_" role="3SuevR">
                <property role="3qc1Xj" value="256" />
              </node>
              <node concept="37vLTw" id="2NUrvU$eYCA" role="3Sueug">
                <ref role="3cqZAo" node="2NUrvU$eYD2" resolve="right_leaf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvU$eYCB" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvU$eYCC" role="3cpWs9">
            <property role="TrG5h" value="leaf_uint" />
            <node concept="3qc1$W" id="2NUrvU$eYCD" role="1tU5fm">
              <property role="3qc1Xj" value="256" />
            </node>
            <node concept="3SuevK" id="2NUrvU$eYCE" role="33vP2m">
              <node concept="3qc1$W" id="2NUrvU$eYCF" role="3SuevR">
                <property role="3qc1Xj" value="256" />
              </node>
              <node concept="37vLTw" id="2NUrvU$eYCG" role="3Sueug">
                <ref role="3cqZAo" node="2NUrvU$eYBJ" resolve="leaf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2DKZvD" id="2NUrvU$eYCH" role="3cqZAp">
          <node concept="3eOVzh" id="2NUrvU$eYCI" role="2DKX1R">
            <node concept="37vLTw" id="2NUrvU$eYCJ" role="3uHU7B">
              <ref role="3cqZAo" node="2NUrvU$eYCs" resolve="left_leaf_uint" />
            </node>
            <node concept="37vLTw" id="2NUrvU$eYCK" role="3uHU7w">
              <ref role="3cqZAo" node="2NUrvU$eYCC" resolve="leaf_uint" />
            </node>
          </node>
        </node>
        <node concept="2DKZvD" id="2NUrvU$eYCL" role="3cqZAp">
          <node concept="3eOVzh" id="2NUrvU$eYCM" role="2DKX1R">
            <node concept="37vLTw" id="2NUrvU$eYCN" role="3uHU7B">
              <ref role="3cqZAo" node="2NUrvU$eYCC" resolve="leaf_uint" />
            </node>
            <node concept="37vLTw" id="2NUrvU$eYCO" role="3uHU7w">
              <ref role="3cqZAo" node="2NUrvU$eYCy" resolve="right_leaf_uint" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NUrvU$eYCP" role="3cqZAp" />
        <node concept="3cpWs6" id="2NUrvU$eYCQ" role="3cqZAp">
          <node concept="3SuevK" id="2NUrvU$eYCR" role="3cqZAk">
            <node concept="3qc1$W" id="2NUrvU$eYCS" role="3SuevR">
              <property role="3qc1Xj" value="1" />
            </node>
            <node concept="3cmrfG" id="2NUrvU$eYCT" role="3Sueug">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3qc1$W" id="2NUrvU$eYCU" role="3clF45">
        <property role="3qc1Xj" value="1" />
      </node>
      <node concept="37vLTG" id="2NUrvU$eYCV" role="3clF46">
        <property role="TrG5h" value="input_domain_name" />
        <node concept="10Q1$e" id="2NUrvU$eYCW" role="1tU5fm">
          <node concept="2D7PWU" id="2NUrvU$eYCX" role="10Q1$1">
            <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2NUrvU$eYCY" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="2D7PWU" id="2NUrvU$eYCZ" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="2NUrvU$eYD0" role="3clF46">
        <property role="TrG5h" value="left_leaf" />
        <node concept="2D7PWU" id="2NUrvU$eYD1" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="2NUrvU$eYD2" role="3clF46">
        <property role="TrG5h" value="right_leaf" />
        <node concept="2D7PWU" id="2NUrvU$eYD3" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="2NUrvU$eYD4" role="3clF46">
        <property role="TrG5h" value="authPath_left" />
        <node concept="3uibUv" id="7LvGvKSqVjB" role="1tU5fm">
          <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
        </node>
      </node>
      <node concept="37vLTG" id="2NUrvU$eYDc" role="3clF46">
        <property role="TrG5h" value="authPath_right" />
        <node concept="3uibUv" id="7LvGvKSqUW1" role="1tU5fm">
          <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2NUrvU$eYDe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2NUrvU$eYw7" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5c0_Z" role="jymVt">
      <property role="DRO8Q" value="wildcard non_membership proof function" />
    </node>
    <node concept="DJdLC" id="3h4liP5c0A0" role="jymVt">
      <property role="DRO8Q" value="It takes uint_8[] as its input_domain_name's format and takes MekleAuthPath structure as its input format" />
    </node>
    <node concept="DJdLC" id="3h4liP5c1rj" role="jymVt">
      <property role="DRO8Q" value="The biggest difference is that it uses convert_8_to_Fp function to convert unint_8[] into F_p[8] (for input domain name)" />
    </node>
    <node concept="2YIFZL" id="5ROefHTbxdA" role="jymVt">
      <property role="TrG5h" value="check_wildcard" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5ROefHTbxdC" role="3clF47">
        <node concept="3clFbH" id="3h4liP5bXJq" role="3cqZAp" />
        <node concept="3clFbH" id="3h4liP5bZFg" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5c5Oi" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c5Ok" role="3SKWNk">
            <property role="3SKdUp" value="convert the left and right domain name toF_p[8] to be accepted by Poseidon Hash" />
          </node>
        </node>
        <node concept="3cpWs8" id="5ROefHTbxdD" role="3cqZAp">
          <node concept="3cpWsn" id="5ROefHTbxdE" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="2D7PWU" id="4GtMlydSzix" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ROefHTbxdG" role="3cqZAp">
          <node concept="3cpWsn" id="5ROefHTbxdH" role="3cpWs9">
            <property role="TrG5h" value="left_domain_name_input" />
            <node concept="10Q1$e" id="5ROefHTbxdI" role="1tU5fm">
              <node concept="2D7PWU" id="4GtMlydSzk4" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="1rXfSq" id="5ROefHTbxdK" role="33vP2m">
              <ref role="37wK5l" node="2ojeUmlJ1_E" resolve="convert_8_to_Fp" />
              <node concept="37vLTw" id="5ROefHTbxdL" role="37wK5m">
                <ref role="3cqZAo" node="5ROefHTbxfU" resolve="left_domain_name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ROefHTbxdM" role="3cqZAp">
          <node concept="3cpWsn" id="5ROefHTbxdN" role="3cpWs9">
            <property role="TrG5h" value="right_domain_name_input" />
            <node concept="10Q1$e" id="5ROefHTbxdO" role="1tU5fm">
              <node concept="2D7PWU" id="4GtMlydSznb" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="1rXfSq" id="5ROefHTbxdQ" role="33vP2m">
              <ref role="37wK5l" node="2ojeUmlJ1_E" resolve="convert_8_to_Fp" />
              <node concept="37vLTw" id="5ROefHTbxdR" role="37wK5m">
                <ref role="3cqZAo" node="5ROefHTbxfX" resolve="right_domain_name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ROefHTbxdS" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5c5Cf" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c5Cg" role="3SKWNk">
            <property role="3SKdUp" value="compute the hash of left and right domain name in the first layer" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5c5Ch" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c5Ci" role="3SKWNk">
            <property role="3SKdUp" value="The needs an 8-input Poseidon Hash since domain name has a larger size" />
          </node>
        </node>
        <node concept="3cpWs8" id="5ROefHTbxdT" role="3cqZAp">
          <node concept="3cpWsn" id="5ROefHTbxdU" role="3cpWs9">
            <property role="TrG5h" value="left_leaf" />
            <node concept="2YIFZM" id="2NUrvUr2_U$" role="33vP2m">
              <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
              <ref role="37wK5l" to="7dh8:1y50vKi9QC$" resolve="poseidon_hash_8" />
              <node concept="37vLTw" id="2NUrvUr2_U_" role="37wK5m">
                <ref role="3cqZAo" node="5ROefHTbxdH" resolve="left_domain_name_input" />
              </node>
            </node>
            <node concept="2D7PWU" id="4GtMlydSzpC" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ROefHTbxdY" role="3cqZAp">
          <node concept="3cpWsn" id="5ROefHTbxdZ" role="3cpWs9">
            <property role="TrG5h" value="right_leaf" />
            <node concept="2YIFZM" id="2NUrvUr2AvL" role="33vP2m">
              <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
              <ref role="37wK5l" to="7dh8:1y50vKi9QC$" resolve="poseidon_hash_8" />
              <node concept="37vLTw" id="2NUrvUr2AvM" role="37wK5m">
                <ref role="3cqZAo" node="5ROefHTbxdN" resolve="right_domain_name_input" />
              </node>
            </node>
            <node concept="2D7PWU" id="4GtMlydSzqs" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ROefHTbxe3" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5c665" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c666" role="3SKWNk">
            <property role="3SKdUp" value="compute the Merkle Root using left_left and right_left verifiably" />
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvUr2E04" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvUr2E07" role="3cpWs9">
            <property role="TrG5h" value="left_root" />
            <node concept="2D7PWU" id="2NUrvUr2E02" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="2NUrvUr2E7y" role="33vP2m">
              <node concept="37vLTw" id="2NUrvUr2E6T" role="2Oq$k0">
                <ref role="3cqZAo" node="5ROefHTbxg0" resolve="authPath_left" />
              </node>
              <node concept="liA8E" id="2NUrvUr2E8E" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="2NUrvUr2E9l" role="37wK5m">
                  <ref role="3cqZAo" node="5ROefHTbxdU" resolve="left_leaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvUr2Eg9" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvUr2Ega" role="3cpWs9">
            <property role="TrG5h" value="right_root" />
            <node concept="2D7PWU" id="2NUrvUr2Egb" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="2NUrvUr2Egc" role="33vP2m">
              <node concept="37vLTw" id="2NUrvUr2Egd" role="2Oq$k0">
                <ref role="3cqZAo" node="5ROefHTbxg0" resolve="authPath_left" />
              </node>
              <node concept="liA8E" id="2NUrvUr2Ege" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="2NUrvUr2EoP" role="37wK5m">
                  <ref role="3cqZAo" node="5ROefHTbxdZ" resolve="right_leaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3h4liP5bY7c" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5c6hL" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c6hM" role="3SKWNk">
            <property role="3SKdUp" value="compare that roots are the same (public input root, roots computed from left and right)" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5c6hN" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c6hO" role="3SKWNk">
            <property role="3SKdUp" value="It can prove that both left_leaf and right_leaf exist in Merkle Tree" />
          </node>
        </node>
        <node concept="3s6pcg" id="5ROefHTbxej" role="3cqZAp">
          <node concept="37vLTw" id="2NUrvUr2EFk" role="3s6pch">
            <ref role="3cqZAo" node="2NUrvUr2E07" resolve="left_root" />
          </node>
          <node concept="37vLTw" id="5ROefHTbxel" role="3s6pci">
            <ref role="3cqZAo" node="5ROefHTbxfS" resolve="root" />
          </node>
        </node>
        <node concept="3s6pcg" id="5ROefHTbxem" role="3cqZAp">
          <node concept="37vLTw" id="2NUrvUr2EFL" role="3s6pch">
            <ref role="3cqZAo" node="2NUrvUr2Ega" resolve="right_root" />
          </node>
          <node concept="37vLTw" id="5ROefHTbxeo" role="3s6pci">
            <ref role="3cqZAo" node="5ROefHTbxfS" resolve="root" />
          </node>
        </node>
        <node concept="3clFbH" id="5ROefHTbxep" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5c6zD" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c6zE" role="3SKWNk">
            <property role="3SKdUp" value="Prove that left_leaf and right_leaf are adjacent!" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5c6zF" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c6zG" role="3SKWNk">
            <property role="3SKdUp" value="The directionSelector is exactly the same as leaf's index position in first layer" />
          </node>
        </node>
        <node concept="3cpWs8" id="5ROefHTbxeq" role="3cqZAp">
          <node concept="3cpWsn" id="5ROefHTbxer" role="3cpWs9">
            <property role="TrG5h" value="one" />
            <node concept="3qc1$W" id="5ROefHTbxes" role="1tU5fm">
              <property role="3qc1Xj" value="8" />
            </node>
            <node concept="3cmrfG" id="5ROefHTbxet" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3s6pcg" id="5ROefHTbxeu" role="3cqZAp">
          <node concept="3cpWs3" id="5ROefHTbxev" role="3s6pch">
            <node concept="37vLTw" id="5ROefHTbxew" role="3uHU7w">
              <ref role="3cqZAo" node="5ROefHTbxer" resolve="one" />
            </node>
            <node concept="2OqwBi" id="5ROefHTbxex" role="3uHU7B">
              <node concept="37vLTw" id="5ROefHTbxey" role="2Oq$k0">
                <ref role="3cqZAo" node="5ROefHTbxg0" resolve="authPath_left" />
              </node>
              <node concept="2OwXpG" id="7LvGvKSqYmW" role="2OqNvi">
                <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5ROefHTbxe$" role="3s6pci">
            <node concept="37vLTw" id="5ROefHTbxe_" role="2Oq$k0">
              <ref role="3cqZAo" node="5ROefHTbxg2" resolve="authPath_right" />
            </node>
            <node concept="2OwXpG" id="7LvGvKSqYYv" role="2OqNvi">
              <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ROefHTbxeB" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5c6PZ" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c6Q0" role="3SKWNk">
            <property role="3SKdUp" value="Prove that left_leaf is indead smaller than right_leaf" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5c6Q1" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c6Q2" role="3SKWNk">
            <property role="3SKdUp" value="This firstly checks left_index and right_index for exact matching and then checks the next is smaller" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5c78F" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5c78H" role="3SKWNk">
            <property role="3SKdUp" value="check out the notes for the algorithm" />
          </node>
        </node>
        <node concept="1Dw8fO" id="5ROefHTbxeC" role="3cqZAp">
          <node concept="3clFbS" id="5ROefHTbxeD" role="2LFqv$">
            <node concept="3clFbJ" id="5ROefHTbxeE" role="3cqZAp">
              <node concept="3clFbS" id="5ROefHTbxeF" role="3clFbx">
                <node concept="3s6pcg" id="5ROefHTbxeG" role="3cqZAp">
                  <node concept="AH0OO" id="5ROefHTbxeH" role="3s6pch">
                    <node concept="37vLTw" id="5ROefHTbxeI" role="AHEQo">
                      <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5ROefHTbxeJ" role="AHHXb">
                      <ref role="3cqZAo" node="5ROefHTbxfU" resolve="left_domain_name" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="5ROefHTbxeK" role="3s6pci">
                    <node concept="37vLTw" id="5ROefHTbxeL" role="AHEQo">
                      <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5ROefHTbxeM" role="AHHXb">
                      <ref role="3cqZAo" node="5ROefHTbxfP" resolve="input_domain_name_wildcard" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="5ROefHTbxeN" role="3clFbw">
                <node concept="3SuevK" id="5ROefHTbxeO" role="3uHU7B">
                  <node concept="3qc1$W" id="5ROefHTbxeP" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                  <node concept="37vLTw" id="5ROefHTbxeQ" role="3Sueug">
                    <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="5ROefHTbxeR" role="3uHU7w">
                  <ref role="3cqZAo" node="5ROefHTbxg4" resolve="left_index" />
                </node>
              </node>
              <node concept="3eNFk2" id="5ROefHTbxeS" role="3eNLev">
                <node concept="2_lxnS" id="5ROefHTbxeT" role="3eO9$A">
                  <node concept="3SuevK" id="5ROefHTbxeU" role="3uHU7B">
                    <node concept="3qc1$W" id="5ROefHTbxeV" role="3SuevR">
                      <property role="3qc1Xj" value="8" />
                    </node>
                    <node concept="37vLTw" id="5ROefHTbxeW" role="3Sueug">
                      <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5ROefHTbxeX" role="3uHU7w">
                    <ref role="3cqZAo" node="5ROefHTbxg4" resolve="left_index" />
                  </node>
                </node>
                <node concept="3clFbS" id="5ROefHTbxeY" role="3eOfB_">
                  <node concept="2DKZvD" id="5ROefHTbxeZ" role="3cqZAp">
                    <node concept="3eOVzh" id="5ROefHTbxf0" role="2DKX1R">
                      <node concept="AH0OO" id="5ROefHTbxf1" role="3uHU7w">
                        <node concept="37vLTw" id="5ROefHTbxf2" role="AHEQo">
                          <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5ROefHTbxf3" role="AHHXb">
                          <ref role="3cqZAo" node="5ROefHTbxfP" resolve="input_domain_name_wildcard" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="5ROefHTbxf4" role="3uHU7B">
                        <node concept="37vLTw" id="5ROefHTbxf5" role="AHEQo">
                          <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5ROefHTbxf6" role="AHHXb">
                          <ref role="3cqZAo" node="5ROefHTbxfU" resolve="left_domain_name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5ROefHTbxf7" role="3cqZAp" />
            <node concept="3clFbJ" id="5ROefHTbxf8" role="3cqZAp">
              <node concept="3clFbS" id="5ROefHTbxf9" role="3clFbx">
                <node concept="3s6pcg" id="5ROefHTbxfa" role="3cqZAp">
                  <node concept="AH0OO" id="5ROefHTbxfb" role="3s6pch">
                    <node concept="37vLTw" id="5ROefHTbxfc" role="AHEQo">
                      <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5ROefHTbxfd" role="AHHXb">
                      <ref role="3cqZAo" node="5ROefHTbxfX" resolve="right_domain_name" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="5ROefHTbxfe" role="3s6pci">
                    <node concept="37vLTw" id="5ROefHTbxff" role="AHEQo">
                      <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5ROefHTbxfg" role="AHHXb">
                      <ref role="3cqZAo" node="5ROefHTbxfP" resolve="input_domain_name_wildcard" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="5ROefHTbxfh" role="3clFbw">
                <node concept="3SuevK" id="5ROefHTbxfi" role="3uHU7B">
                  <node concept="37vLTw" id="5ROefHTbxfj" role="3Sueug">
                    <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                  </node>
                  <node concept="3qc1$W" id="5ROefHTbxfk" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
                <node concept="37vLTw" id="5ROefHTbxfl" role="3uHU7w">
                  <ref role="3cqZAo" node="5ROefHTbxg6" resolve="right_index" />
                </node>
              </node>
              <node concept="3eNFk2" id="5ROefHTbxfm" role="3eNLev">
                <node concept="2_lxnS" id="5ROefHTbxfn" role="3eO9$A">
                  <node concept="3SuevK" id="5ROefHTbxfo" role="3uHU7B">
                    <node concept="3qc1$W" id="5ROefHTbxfp" role="3SuevR">
                      <property role="3qc1Xj" value="8" />
                    </node>
                    <node concept="37vLTw" id="5ROefHTbxfq" role="3Sueug">
                      <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5ROefHTbxfr" role="3uHU7w">
                    <ref role="3cqZAo" node="5ROefHTbxg6" resolve="right_index" />
                  </node>
                </node>
                <node concept="3clFbS" id="5ROefHTbxfs" role="3eOfB_">
                  <node concept="2DKZvD" id="5ROefHTbxft" role="3cqZAp">
                    <node concept="3eOSWO" id="5ROefHTbxfu" role="2DKX1R">
                      <node concept="AH0OO" id="5ROefHTbxfv" role="3uHU7B">
                        <node concept="37vLTw" id="5ROefHTbxfw" role="AHEQo">
                          <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5ROefHTbxfx" role="AHHXb">
                          <ref role="3cqZAo" node="5ROefHTbxfX" resolve="right_domain_name" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="5ROefHTbxfy" role="3uHU7w">
                        <node concept="37vLTw" id="5ROefHTbxfz" role="AHEQo">
                          <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5ROefHTbxf$" role="AHHXb">
                          <ref role="3cqZAo" node="5ROefHTbxfP" resolve="input_domain_name_wildcard" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5ROefHTbxf_" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5ROefHTbxfA" role="1tU5fm" />
            <node concept="3cmrfG" id="5ROefHTbxfB" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5ROefHTbxfC" role="1Dwp0S">
            <node concept="3cmrfG" id="5ROefHTbxfD" role="3uHU7w">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="37vLTw" id="5ROefHTbxfE" role="3uHU7B">
              <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5ROefHTbxfF" role="1Dwrff">
            <node concept="37vLTw" id="5ROefHTbxfG" role="2$L3a6">
              <ref role="3cqZAo" node="5ROefHTbxf_" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ROefHTbxfH" role="3cqZAp" />
        <node concept="3cpWs6" id="5ROefHTbxfI" role="3cqZAp">
          <node concept="3SuevK" id="5ROefHTbxfJ" role="3cqZAk">
            <node concept="3qc1$W" id="5ROefHTbxfK" role="3SuevR">
              <property role="3qc1Xj" value="1" />
            </node>
            <node concept="3cmrfG" id="5ROefHTbxfL" role="3Sueug">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ROefHTbxfM" role="3cqZAp" />
      </node>
      <node concept="3qc1$W" id="5ROefHTbxfO" role="3clF45">
        <property role="3qc1Xj" value="1" />
      </node>
      <node concept="37vLTG" id="5ROefHTbxfP" role="3clF46">
        <property role="TrG5h" value="input_domain_name_wildcard" />
        <node concept="10Q1$e" id="5ROefHTbxfQ" role="1tU5fm">
          <node concept="3qc1$W" id="5ROefHTbxfR" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ROefHTbxfS" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="2D7PWU" id="4GtMlydSzhy" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="5ROefHTbxfU" role="3clF46">
        <property role="TrG5h" value="left_domain_name" />
        <node concept="10Q1$e" id="5ROefHTbxfV" role="1tU5fm">
          <node concept="3qc1$W" id="5ROefHTbxfW" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ROefHTbxfX" role="3clF46">
        <property role="TrG5h" value="right_domain_name" />
        <node concept="10Q1$e" id="5ROefHTbxfY" role="1tU5fm">
          <node concept="3qc1$W" id="5ROefHTbxfZ" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5ROefHTbxg0" role="3clF46">
        <property role="TrG5h" value="authPath_left" />
        <node concept="3uibUv" id="7LvGvKSqVGR" role="1tU5fm">
          <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
        </node>
      </node>
      <node concept="37vLTG" id="5ROefHTbxg2" role="3clF46">
        <property role="TrG5h" value="authPath_right" />
        <node concept="3uibUv" id="7LvGvKSqW4M" role="1tU5fm">
          <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
        </node>
      </node>
      <node concept="37vLTG" id="5ROefHTbxg4" role="3clF46">
        <property role="TrG5h" value="left_index" />
        <node concept="3qc1$W" id="5ROefHTbxg5" role="1tU5fm">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="5ROefHTbxg6" role="3clF46">
        <property role="TrG5h" value="right_index" />
        <node concept="3qc1$W" id="5ROefHTbxg7" role="1tU5fm">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5ROefHTbxfN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="LEx6GG5gF$" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5c20l" role="jymVt">
      <property role="DRO8Q" value="wildcard non_membership proof function" />
    </node>
    <node concept="DJdLC" id="3h4liP5c20m" role="jymVt">
      <property role="DRO8Q" value="It takes uint_8[] as its input_domain_name's format" />
    </node>
    <node concept="DJdLC" id="3h4liP5c20n" role="jymVt">
      <property role="DRO8Q" value="The biggest difference is that it uses convert_8_to_Fp_python function to convert unint_8[] into F_p[8] (for input domain name)" />
    </node>
    <node concept="DJdLC" id="3h4liP5ca1p" role="jymVt">
      <property role="DRO8Q" value="More detailed comments see check_wildcard function" />
    </node>
    <node concept="2YIFZL" id="368D951eDsE" role="jymVt">
      <property role="TrG5h" value="check_wildcard_python" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="368D951eDsF" role="3clF47">
        <node concept="3clFbH" id="3h4liP5bYd2" role="3cqZAp" />
        <node concept="3cpWs8" id="368D951eDsG" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDsH" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="2D7PWU" id="368D951eDsI" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D951eDsK" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDsL" role="3cpWs9">
            <property role="TrG5h" value="left_domain_name_input" />
            <node concept="10Q1$e" id="368D951eDsM" role="1tU5fm">
              <node concept="2D7PWU" id="368D951eDsN" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="1rXfSq" id="368D951eDsO" role="33vP2m">
              <ref role="37wK5l" node="368D9512hNj" resolve="convert_8_to_Fp_python" />
              <node concept="37vLTw" id="368D951eDsP" role="37wK5m">
                <ref role="3cqZAo" node="368D951eDvY" resolve="left_domain_name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D951eDsR" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDsS" role="3cpWs9">
            <property role="TrG5h" value="right_domain_name_input" />
            <node concept="10Q1$e" id="368D951eDsT" role="1tU5fm">
              <node concept="2D7PWU" id="368D951eDsU" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="1rXfSq" id="368D951eDsV" role="33vP2m">
              <ref role="37wK5l" node="368D9512hNj" resolve="convert_8_to_Fp_python" />
              <node concept="37vLTw" id="368D951eDsW" role="37wK5m">
                <ref role="3cqZAo" node="368D951eDw1" resolve="right_domain_name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7mM8bZjSAO6" role="3cqZAp" />
        <node concept="3cpWs8" id="368D951eDtH" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDtI" role="3cpWs9">
            <property role="TrG5h" value="left_leaf" />
            <node concept="2YIFZM" id="368D951eDtJ" role="33vP2m">
              <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
              <ref role="37wK5l" to="7dh8:1y50vKi9QC$" resolve="poseidon_hash_8" />
              <node concept="37vLTw" id="368D951eEWS" role="37wK5m">
                <ref role="3cqZAo" node="368D951eDsL" resolve="left_domain_name_input" />
              </node>
            </node>
            <node concept="2D7PWU" id="368D951eDtL" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D951eDtM" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDtN" role="3cpWs9">
            <property role="TrG5h" value="right_leaf" />
            <node concept="2YIFZM" id="368D951eDtO" role="33vP2m">
              <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
              <ref role="37wK5l" to="7dh8:1y50vKi9QC$" resolve="poseidon_hash_8" />
              <node concept="37vLTw" id="368D951eEYW" role="37wK5m">
                <ref role="3cqZAo" node="368D951eDsS" resolve="right_domain_name_input" />
              </node>
            </node>
            <node concept="2D7PWU" id="368D951eDtQ" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D951eDu0" role="3cqZAp" />
        <node concept="3cpWs8" id="368D951eDu1" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDu2" role="3cpWs9">
            <property role="TrG5h" value="left_root" />
            <node concept="2D7PWU" id="368D951eDu3" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="368D951eDu4" role="33vP2m">
              <node concept="37vLTw" id="368D951eDu5" role="2Oq$k0">
                <ref role="3cqZAo" node="368D951eDw4" resolve="authPath_left" />
              </node>
              <node concept="liA8E" id="368D951eDu6" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="368D951eDu7" role="37wK5m">
                  <ref role="3cqZAo" node="368D951eDtI" resolve="left_leaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D951eDu8" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDu9" role="3cpWs9">
            <property role="TrG5h" value="right_root" />
            <node concept="2D7PWU" id="368D951eDua" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="368D951eDub" role="33vP2m">
              <node concept="37vLTw" id="7mM8bZjSC6_" role="2Oq$k0">
                <ref role="3cqZAo" node="368D951eDw6" resolve="authPath_right" />
              </node>
              <node concept="liA8E" id="368D951eDud" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="368D951eDue" role="37wK5m">
                  <ref role="3cqZAo" node="368D951eDtN" resolve="right_leaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D951eDuf" role="3cqZAp" />
        <node concept="3s6pcg" id="368D951eDun" role="3cqZAp">
          <node concept="37vLTw" id="368D951eDuo" role="3s6pch">
            <ref role="3cqZAo" node="368D951eDu2" resolve="left_root" />
          </node>
          <node concept="37vLTw" id="368D951eDup" role="3s6pci">
            <ref role="3cqZAo" node="368D951eDvW" resolve="root" />
          </node>
        </node>
        <node concept="3s6pcg" id="368D951eDur" role="3cqZAp">
          <node concept="37vLTw" id="368D951eDus" role="3s6pch">
            <ref role="3cqZAo" node="368D951eDu9" resolve="right_root" />
          </node>
          <node concept="37vLTw" id="368D951eDut" role="3s6pci">
            <ref role="3cqZAo" node="368D951eDvW" resolve="root" />
          </node>
        </node>
        <node concept="3clFbH" id="368D951eDuu" role="3cqZAp" />
        <node concept="3cpWs8" id="368D951eDuv" role="3cqZAp">
          <node concept="3cpWsn" id="368D951eDuw" role="3cpWs9">
            <property role="TrG5h" value="one" />
            <node concept="3qc1$W" id="368D951eDux" role="1tU5fm">
              <property role="3qc1Xj" value="8" />
            </node>
            <node concept="3cmrfG" id="368D951eDuy" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3s6pcg" id="368D951eDuz" role="3cqZAp">
          <node concept="3cpWs3" id="368D951eDu$" role="3s6pch">
            <node concept="37vLTw" id="368D951eDu_" role="3uHU7w">
              <ref role="3cqZAo" node="368D951eDuw" resolve="one" />
            </node>
            <node concept="2OqwBi" id="368D951eDuA" role="3uHU7B">
              <node concept="37vLTw" id="368D951eDuB" role="2Oq$k0">
                <ref role="3cqZAo" node="368D951eDw4" resolve="authPath_left" />
              </node>
              <node concept="2OwXpG" id="7LvGvKSqZBs" role="2OqNvi">
                <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="368D951eDuD" role="3s6pci">
            <node concept="37vLTw" id="368D951eDuE" role="2Oq$k0">
              <ref role="3cqZAo" node="368D951eDw6" resolve="authPath_right" />
            </node>
            <node concept="2OwXpG" id="7LvGvKSr0fP" role="2OqNvi">
              <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D951eDuG" role="3cqZAp" />
        <node concept="1Dw8fO" id="368D951eDuH" role="3cqZAp">
          <node concept="3clFbS" id="368D951eDuI" role="2LFqv$">
            <node concept="3clFbJ" id="368D951eDuJ" role="3cqZAp">
              <node concept="3clFbS" id="368D951eDuK" role="3clFbx">
                <node concept="3s6pcg" id="368D951eDuL" role="3cqZAp">
                  <node concept="AH0OO" id="368D951eDuM" role="3s6pch">
                    <node concept="37vLTw" id="368D951eDuN" role="AHEQo">
                      <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="368D951eDuO" role="AHHXb">
                      <ref role="3cqZAo" node="368D951eDvY" resolve="left_domain_name" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="368D951eDuP" role="3s6pci">
                    <node concept="37vLTw" id="368D951eDuQ" role="AHEQo">
                      <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="368D951eDuR" role="AHHXb">
                      <ref role="3cqZAo" node="368D951eDvT" resolve="input_domain_name_wildcard" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="368D951eDuS" role="3clFbw">
                <node concept="3SuevK" id="368D951eDuT" role="3uHU7B">
                  <node concept="3qc1$W" id="368D951eDuU" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                  <node concept="37vLTw" id="368D951eDuV" role="3Sueug">
                    <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="368D951eDuW" role="3uHU7w">
                  <ref role="3cqZAo" node="368D951eDw8" resolve="left_index" />
                </node>
              </node>
              <node concept="3eNFk2" id="368D951eDuX" role="3eNLev">
                <node concept="2_lxnS" id="368D951eDuY" role="3eO9$A">
                  <node concept="3SuevK" id="368D951eDuZ" role="3uHU7B">
                    <node concept="3qc1$W" id="368D951eDv0" role="3SuevR">
                      <property role="3qc1Xj" value="8" />
                    </node>
                    <node concept="37vLTw" id="368D951eDv1" role="3Sueug">
                      <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="368D951eDv2" role="3uHU7w">
                    <ref role="3cqZAo" node="368D951eDw8" resolve="left_index" />
                  </node>
                </node>
                <node concept="3clFbS" id="368D951eDv3" role="3eOfB_">
                  <node concept="2DKZvD" id="368D951eDv4" role="3cqZAp">
                    <node concept="3eOVzh" id="368D951eDv5" role="2DKX1R">
                      <node concept="AH0OO" id="368D951eDv6" role="3uHU7w">
                        <node concept="37vLTw" id="368D951eDv7" role="AHEQo">
                          <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="368D951eDv8" role="AHHXb">
                          <ref role="3cqZAo" node="368D951eDvT" resolve="input_domain_name_wildcard" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="368D951eDv9" role="3uHU7B">
                        <node concept="37vLTw" id="368D951eDva" role="AHEQo">
                          <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="368D951eDvb" role="AHHXb">
                          <ref role="3cqZAo" node="368D951eDvY" resolve="left_domain_name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2DKZvD" id="LEx6GBJ3lh" role="3cqZAp">
                    <node concept="2JLfk8" id="LEx6GBJ4ks" role="2DKX1R">
                      <node concept="3SuevK" id="LEx6GBJ4m4" role="3uHU7w">
                        <node concept="3qc1$W" id="LEx6GBJ4m6" role="3SuevR">
                          <property role="3qc1Xj" value="8" />
                        </node>
                        <node concept="3cmrfG" id="LEx6GBJ4mT" role="3Sueug">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="LEx6GBJ4fZ" role="3uHU7B">
                        <node concept="37vLTw" id="LEx6GBJ4hv" role="AHEQo">
                          <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="LEx6GBJ4ea" role="AHHXb">
                          <ref role="3cqZAo" node="368D951eDvY" resolve="left_domain_name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="368D951eDvc" role="3cqZAp" />
            <node concept="3clFbJ" id="368D951eDvd" role="3cqZAp">
              <node concept="3clFbS" id="368D951eDve" role="3clFbx">
                <node concept="3s6pcg" id="368D951eDvf" role="3cqZAp">
                  <node concept="AH0OO" id="368D951eDvg" role="3s6pch">
                    <node concept="37vLTw" id="368D951eDvh" role="AHEQo">
                      <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="368D951eDvi" role="AHHXb">
                      <ref role="3cqZAo" node="368D951eDw1" resolve="right_domain_name" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="368D951eDvj" role="3s6pci">
                    <node concept="37vLTw" id="368D951eDvk" role="AHEQo">
                      <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="368D951eDvl" role="AHHXb">
                      <ref role="3cqZAo" node="368D951eDvT" resolve="input_domain_name_wildcard" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="368D951eDvm" role="3clFbw">
                <node concept="3SuevK" id="368D951eDvn" role="3uHU7B">
                  <node concept="37vLTw" id="368D951eDvo" role="3Sueug">
                    <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                  </node>
                  <node concept="3qc1$W" id="368D951eDvp" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
                <node concept="37vLTw" id="368D951eDvq" role="3uHU7w">
                  <ref role="3cqZAo" node="368D951eDwa" resolve="right_index" />
                </node>
              </node>
              <node concept="3eNFk2" id="368D951eDvr" role="3eNLev">
                <node concept="2_lxnS" id="368D951eDvs" role="3eO9$A">
                  <node concept="3SuevK" id="368D951eDvt" role="3uHU7B">
                    <node concept="3qc1$W" id="368D951eDvu" role="3SuevR">
                      <property role="3qc1Xj" value="8" />
                    </node>
                    <node concept="37vLTw" id="368D951eDvv" role="3Sueug">
                      <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="368D951eDvw" role="3uHU7w">
                    <ref role="3cqZAo" node="368D951eDwa" resolve="right_index" />
                  </node>
                </node>
                <node concept="3clFbS" id="368D951eDvx" role="3eOfB_">
                  <node concept="2DKZvD" id="368D951eDvy" role="3cqZAp">
                    <node concept="3eOSWO" id="368D951eDvz" role="2DKX1R">
                      <node concept="AH0OO" id="368D951eDv$" role="3uHU7B">
                        <node concept="37vLTw" id="368D951eDv_" role="AHEQo">
                          <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="368D951eDvA" role="AHHXb">
                          <ref role="3cqZAo" node="368D951eDw1" resolve="right_domain_name" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="368D951eDvB" role="3uHU7w">
                        <node concept="37vLTw" id="368D951eDvC" role="AHEQo">
                          <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="368D951eDvD" role="AHHXb">
                          <ref role="3cqZAo" node="368D951eDvT" resolve="input_domain_name_wildcard" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="368D951eDvE" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="368D951eDvF" role="1tU5fm" />
            <node concept="3cmrfG" id="368D951eDvG" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="368D951eDvH" role="1Dwp0S">
            <node concept="3cmrfG" id="368D951eDvI" role="3uHU7w">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="37vLTw" id="368D951eDvJ" role="3uHU7B">
              <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="368D951eDvK" role="1Dwrff">
            <node concept="37vLTw" id="368D951eDvL" role="2$L3a6">
              <ref role="3cqZAo" node="368D951eDvE" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D951eDvM" role="3cqZAp" />
        <node concept="3cpWs6" id="368D951eDvN" role="3cqZAp">
          <node concept="3SuevK" id="368D951eDvO" role="3cqZAk">
            <node concept="3qc1$W" id="368D951eDvP" role="3SuevR">
              <property role="3qc1Xj" value="1" />
            </node>
            <node concept="3cmrfG" id="368D951eDvQ" role="3Sueug">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D951eDvR" role="3cqZAp" />
      </node>
      <node concept="3qc1$W" id="368D951eDvS" role="3clF45">
        <property role="3qc1Xj" value="1" />
      </node>
      <node concept="37vLTG" id="368D951eDvT" role="3clF46">
        <property role="TrG5h" value="input_domain_name_wildcard" />
        <node concept="10Q1$e" id="368D951eDvU" role="1tU5fm">
          <node concept="3qc1$W" id="368D951eDvV" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="368D951eDvW" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="2D7PWU" id="368D951eDvX" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="368D951eDvY" role="3clF46">
        <property role="TrG5h" value="left_domain_name" />
        <node concept="10Q1$e" id="368D951eDvZ" role="1tU5fm">
          <node concept="3qc1$W" id="368D951eDw0" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="368D951eDw1" role="3clF46">
        <property role="TrG5h" value="right_domain_name" />
        <node concept="10Q1$e" id="368D951eDw2" role="1tU5fm">
          <node concept="3qc1$W" id="368D951eDw3" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="368D951eDw4" role="3clF46">
        <property role="TrG5h" value="authPath_left" />
        <node concept="3uibUv" id="7LvGvKSqWu1" role="1tU5fm">
          <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
        </node>
      </node>
      <node concept="37vLTG" id="368D951eDw6" role="3clF46">
        <property role="TrG5h" value="authPath_right" />
        <node concept="3uibUv" id="7LvGvKSqWOV" role="1tU5fm">
          <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
        </node>
      </node>
      <node concept="37vLTG" id="368D951eDw8" role="3clF46">
        <property role="TrG5h" value="left_index" />
        <node concept="3qc1$W" id="368D951eDw9" role="1tU5fm">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="368D951eDwa" role="3clF46">
        <property role="TrG5h" value="right_index" />
        <node concept="3qc1$W" id="368D951eDwb" role="1tU5fm">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="3Tm1VV" id="368D951eDwc" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="368D951eDdt" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5c4wF" role="jymVt">
      <property role="DRO8Q" value="wildcard non_membership proof function" />
    </node>
    <node concept="DJdLC" id="3h4liP5c4wG" role="jymVt">
      <property role="DRO8Q" value="It takes uint_8[] as its input_domain_name's format and takes Merkle Path and directionSelector directly as its input format" />
    </node>
    <node concept="DJdLC" id="3h4liP5ca$T" role="jymVt">
      <property role="DRO8Q" value="More detailed comments see check_wildcard function" />
    </node>
    <node concept="2YIFZL" id="5MGqnSkqBAT" role="jymVt">
      <property role="TrG5h" value="check_wildcard_python_path" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5MGqnSkqBAU" role="3clF47">
        <node concept="3clFbH" id="5MGqnSkqBAV" role="3cqZAp" />
        <node concept="3cpWs8" id="5MGqnSkqBAW" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBAX" role="3cpWs9">
            <property role="TrG5h" value="authPath_left" />
            <node concept="3uibUv" id="7LvGvL8EUqJ" role="1tU5fm">
              <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
            </node>
            <node concept="2ShNRf" id="5MGqnSkqBAZ" role="33vP2m">
              <node concept="1pGfFk" id="5MGqnSkqBB0" role="2ShVmc">
                <ref role="37wK5l" node="5MGqnSkqBqm" resolve="MerkleAuthPath" />
                <node concept="37vLTw" id="5MGqnSkqBB1" role="37wK5m">
                  <ref role="3cqZAo" node="5MGqnSkqBFl" resolve="left_dir" />
                </node>
                <node concept="37vLTw" id="5MGqnSkqBB2" role="37wK5m">
                  <ref role="3cqZAo" node="5MGqnSkqBFf" resolve="left_path_array" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MGqnSkqBB3" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBB4" role="3cpWs9">
            <property role="TrG5h" value="authPath_right" />
            <node concept="3uibUv" id="7LvGvL8EUT2" role="1tU5fm">
              <ref role="3uigEE" node="3FDiKWYz72y" resolve="MerkleAuthPath" />
            </node>
            <node concept="2ShNRf" id="5MGqnSkqBB6" role="33vP2m">
              <node concept="1pGfFk" id="5MGqnSkqBB7" role="2ShVmc">
                <ref role="37wK5l" node="5MGqnSkqBqm" resolve="MerkleAuthPath" />
                <node concept="37vLTw" id="5MGqnSkqBB8" role="37wK5m">
                  <ref role="3cqZAo" node="5MGqnSkqBFn" resolve="right_dir" />
                </node>
                <node concept="37vLTw" id="5MGqnSkqBB9" role="37wK5m">
                  <ref role="3cqZAo" node="5MGqnSkqBFi" resolve="right_path_array" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MGqnSkqBBa" role="3cqZAp" />
        <node concept="3cpWs8" id="5MGqnSkqBBb" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBBc" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="2D7PWU" id="5MGqnSkqBBd" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MGqnSkqBBe" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBBf" role="3cpWs9">
            <property role="TrG5h" value="left_domain_name_input" />
            <node concept="10Q1$e" id="5MGqnSkqBBg" role="1tU5fm">
              <node concept="2D7PWU" id="5MGqnSkqBBh" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="1rXfSq" id="5MGqnSkqBBi" role="33vP2m">
              <ref role="37wK5l" node="368D9512hNj" resolve="convert_8_to_Fp_python" />
              <node concept="37vLTw" id="5MGqnSkqBBj" role="37wK5m">
                <ref role="3cqZAo" node="5MGqnSkqBF5" resolve="left_domain_name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MGqnSkqBBk" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBBl" role="3cpWs9">
            <property role="TrG5h" value="right_domain_name_input" />
            <node concept="10Q1$e" id="5MGqnSkqBBm" role="1tU5fm">
              <node concept="2D7PWU" id="5MGqnSkqBBn" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="1rXfSq" id="5MGqnSkqBBo" role="33vP2m">
              <ref role="37wK5l" node="368D9512hNj" resolve="convert_8_to_Fp_python" />
              <node concept="37vLTw" id="5MGqnSkqBBp" role="37wK5m">
                <ref role="3cqZAo" node="5MGqnSkqBF8" resolve="right_domain_name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MGqnSkqBC2" role="3cqZAp" />
        <node concept="3cpWs8" id="5MGqnSkqBCE" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBCF" role="3cpWs9">
            <property role="TrG5h" value="left_leaf" />
            <node concept="2YIFZM" id="5MGqnSkqBCG" role="33vP2m">
              <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
              <ref role="37wK5l" to="7dh8:1y50vKi9QC$" resolve="poseidon_hash_8" />
              <node concept="37vLTw" id="5MGqnSkqBCH" role="37wK5m">
                <ref role="3cqZAo" node="5MGqnSkqBBf" resolve="left_domain_name_input" />
              </node>
            </node>
            <node concept="2D7PWU" id="5MGqnSkqBCI" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MGqnSkqBCJ" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBCK" role="3cpWs9">
            <property role="TrG5h" value="right_leaf" />
            <node concept="2YIFZM" id="5MGqnSkqBCL" role="33vP2m">
              <ref role="1Pybhc" to="7dh8:LEx6GtB3QS" resolve="PoseidonHash" />
              <ref role="37wK5l" to="7dh8:1y50vKi9QC$" resolve="poseidon_hash_8" />
              <node concept="37vLTw" id="5MGqnSkqBCM" role="37wK5m">
                <ref role="3cqZAo" node="5MGqnSkqBBl" resolve="right_domain_name_input" />
              </node>
            </node>
            <node concept="2D7PWU" id="5MGqnSkqBCN" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MGqnSkqBCO" role="3cqZAp" />
        <node concept="3cpWs8" id="5MGqnSkqBD0" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBD1" role="3cpWs9">
            <property role="TrG5h" value="left_root" />
            <node concept="2D7PWU" id="5MGqnSkqBD2" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="5MGqnSkqBD3" role="33vP2m">
              <node concept="37vLTw" id="5MGqnSkqBD4" role="2Oq$k0">
                <ref role="3cqZAo" node="5MGqnSkqBAX" resolve="authPath_left" />
              </node>
              <node concept="liA8E" id="5MGqnSkqBD5" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="5MGqnSkqBD6" role="37wK5m">
                  <ref role="3cqZAo" node="5MGqnSkqBCF" resolve="left_leaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MGqnSkqBD7" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBD8" role="3cpWs9">
            <property role="TrG5h" value="right_root" />
            <node concept="2D7PWU" id="5MGqnSkqBD9" role="1tU5fm">
              <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
            </node>
            <node concept="2OqwBi" id="5MGqnSkqBDa" role="33vP2m">
              <node concept="37vLTw" id="5MGqnSkqBDb" role="2Oq$k0">
                <ref role="3cqZAo" node="5MGqnSkqBB4" resolve="authPath_right" />
              </node>
              <node concept="liA8E" id="5MGqnSkqBDc" role="2OqNvi">
                <ref role="37wK5l" node="3FDiKWYzdx6" resolve="computeMerkleRoot" />
                <node concept="37vLTw" id="5MGqnSkqBDd" role="37wK5m">
                  <ref role="3cqZAo" node="5MGqnSkqBCK" resolve="right_leaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MGqnSkqBDe" role="3cqZAp" />
        <node concept="3s6pcg" id="5MGqnSkqBDn" role="3cqZAp">
          <node concept="37vLTw" id="5MGqnSkqBDo" role="3s6pch">
            <ref role="3cqZAo" node="5MGqnSkqBD1" resolve="left_root" />
          </node>
          <node concept="37vLTw" id="5MGqnSkqBDp" role="3s6pci">
            <ref role="3cqZAo" node="5MGqnSkqBF3" resolve="root" />
          </node>
        </node>
        <node concept="3s6pcg" id="5MGqnSkqBDq" role="3cqZAp">
          <node concept="37vLTw" id="5MGqnSkqBDr" role="3s6pch">
            <ref role="3cqZAo" node="5MGqnSkqBD8" resolve="right_root" />
          </node>
          <node concept="37vLTw" id="5MGqnSkqBDs" role="3s6pci">
            <ref role="3cqZAo" node="5MGqnSkqBF3" resolve="root" />
          </node>
        </node>
        <node concept="3clFbH" id="5MGqnSkqBDt" role="3cqZAp" />
        <node concept="3cpWs8" id="5MGqnSkqBDu" role="3cqZAp">
          <node concept="3cpWsn" id="5MGqnSkqBDv" role="3cpWs9">
            <property role="TrG5h" value="one" />
            <node concept="3qc1$W" id="5MGqnSkqBDw" role="1tU5fm">
              <property role="3qc1Xj" value="8" />
            </node>
            <node concept="3cmrfG" id="5MGqnSkqBDx" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3s6pcg" id="5MGqnSkqBDy" role="3cqZAp">
          <node concept="3cpWs3" id="5MGqnSkqBDz" role="3s6pch">
            <node concept="37vLTw" id="5MGqnSkqBD$" role="3uHU7w">
              <ref role="3cqZAo" node="5MGqnSkqBDv" resolve="one" />
            </node>
            <node concept="2OqwBi" id="5MGqnSkqBD_" role="3uHU7B">
              <node concept="37vLTw" id="5MGqnSkqBDA" role="2Oq$k0">
                <ref role="3cqZAo" node="5MGqnSkqBAX" resolve="authPath_left" />
              </node>
              <node concept="2OwXpG" id="7LvGvL8EY7Y" role="2OqNvi">
                <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5MGqnSkqBDC" role="3s6pci">
            <node concept="37vLTw" id="5MGqnSkqBDD" role="2Oq$k0">
              <ref role="3cqZAo" node="5MGqnSkqBB4" resolve="authPath_right" />
            </node>
            <node concept="2OwXpG" id="7LvGvL8EYy$" role="2OqNvi">
              <ref role="2Oxat5" node="3FDiKWYzc48" resolve="directionSelector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MGqnSkqBDF" role="3cqZAp" />
        <node concept="1Dw8fO" id="5MGqnSkqBDG" role="3cqZAp">
          <node concept="3clFbS" id="5MGqnSkqBDH" role="2LFqv$">
            <node concept="3clFbJ" id="5MGqnSkqBDI" role="3cqZAp">
              <node concept="3clFbS" id="5MGqnSkqBDJ" role="3clFbx">
                <node concept="3s6pcg" id="5MGqnSkqBDK" role="3cqZAp">
                  <node concept="AH0OO" id="5MGqnSkqBDL" role="3s6pch">
                    <node concept="37vLTw" id="5MGqnSkqBDM" role="AHEQo">
                      <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5MGqnSkqBDN" role="AHHXb">
                      <ref role="3cqZAo" node="5MGqnSkqBF5" resolve="left_domain_name" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="5MGqnSkqBDO" role="3s6pci">
                    <node concept="37vLTw" id="5MGqnSkqBDP" role="AHEQo">
                      <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5MGqnSkqBDQ" role="AHHXb">
                      <ref role="3cqZAo" node="5MGqnSkqBF0" resolve="input_domain_name_wildcard" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="5MGqnSkqBDR" role="3clFbw">
                <node concept="3SuevK" id="5MGqnSkqBDS" role="3uHU7B">
                  <node concept="3qc1$W" id="5MGqnSkqBDT" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                  <node concept="37vLTw" id="5MGqnSkqBDU" role="3Sueug">
                    <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="5MGqnSkqBDV" role="3uHU7w">
                  <ref role="3cqZAo" node="5MGqnSkqBFb" resolve="left_index" />
                </node>
              </node>
              <node concept="3eNFk2" id="5MGqnSkqBDW" role="3eNLev">
                <node concept="2_lxnS" id="5MGqnSkqBDX" role="3eO9$A">
                  <node concept="3SuevK" id="5MGqnSkqBDY" role="3uHU7B">
                    <node concept="3qc1$W" id="5MGqnSkqBDZ" role="3SuevR">
                      <property role="3qc1Xj" value="8" />
                    </node>
                    <node concept="37vLTw" id="5MGqnSkqBE0" role="3Sueug">
                      <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5MGqnSkqBE1" role="3uHU7w">
                    <ref role="3cqZAo" node="5MGqnSkqBFb" resolve="left_index" />
                  </node>
                </node>
                <node concept="3clFbS" id="5MGqnSkqBE2" role="3eOfB_">
                  <node concept="2DKZvD" id="5MGqnSkqBE3" role="3cqZAp">
                    <node concept="3eOVzh" id="5MGqnSkqBE4" role="2DKX1R">
                      <node concept="AH0OO" id="5MGqnSkqBE5" role="3uHU7w">
                        <node concept="37vLTw" id="5MGqnSkqBE6" role="AHEQo">
                          <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5MGqnSkqBE7" role="AHHXb">
                          <ref role="3cqZAo" node="5MGqnSkqBF0" resolve="input_domain_name_wildcard" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="5MGqnSkqBE8" role="3uHU7B">
                        <node concept="37vLTw" id="5MGqnSkqBE9" role="AHEQo">
                          <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5MGqnSkqBEa" role="AHHXb">
                          <ref role="3cqZAo" node="5MGqnSkqBF5" resolve="left_domain_name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2DKZvD" id="5MGqnSkqBEb" role="3cqZAp">
                    <node concept="2JLfk8" id="5MGqnSkqBEc" role="2DKX1R">
                      <node concept="3SuevK" id="5MGqnSkqBEd" role="3uHU7w">
                        <node concept="3qc1$W" id="5MGqnSkqBEe" role="3SuevR">
                          <property role="3qc1Xj" value="8" />
                        </node>
                        <node concept="3cmrfG" id="5MGqnSkqBEf" role="3Sueug">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="5MGqnSkqBEg" role="3uHU7B">
                        <node concept="37vLTw" id="5MGqnSkqBEh" role="AHEQo">
                          <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5MGqnSkqBEi" role="AHHXb">
                          <ref role="3cqZAo" node="5MGqnSkqBF5" resolve="left_domain_name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5MGqnSkqBEj" role="3cqZAp" />
            <node concept="3clFbJ" id="5MGqnSkqBEk" role="3cqZAp">
              <node concept="3clFbS" id="5MGqnSkqBEl" role="3clFbx">
                <node concept="3s6pcg" id="5MGqnSkqBEm" role="3cqZAp">
                  <node concept="AH0OO" id="5MGqnSkqBEn" role="3s6pch">
                    <node concept="37vLTw" id="5MGqnSkqBEo" role="AHEQo">
                      <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5MGqnSkqBEp" role="AHHXb">
                      <ref role="3cqZAo" node="5MGqnSkqBF8" resolve="right_domain_name" />
                    </node>
                  </node>
                  <node concept="AH0OO" id="5MGqnSkqBEq" role="3s6pci">
                    <node concept="37vLTw" id="5MGqnSkqBEr" role="AHEQo">
                      <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="5MGqnSkqBEs" role="AHHXb">
                      <ref role="3cqZAo" node="5MGqnSkqBF0" resolve="input_domain_name_wildcard" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="5MGqnSkqBEt" role="3clFbw">
                <node concept="3SuevK" id="5MGqnSkqBEu" role="3uHU7B">
                  <node concept="37vLTw" id="5MGqnSkqBEv" role="3Sueug">
                    <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                  </node>
                  <node concept="3qc1$W" id="5MGqnSkqBEw" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
                <node concept="37vLTw" id="5MGqnSkqBEx" role="3uHU7w">
                  <ref role="3cqZAo" node="5MGqnSkqBFd" resolve="right_index" />
                </node>
              </node>
              <node concept="3eNFk2" id="5MGqnSkqBEy" role="3eNLev">
                <node concept="2_lxnS" id="5MGqnSkqBEz" role="3eO9$A">
                  <node concept="3SuevK" id="5MGqnSkqBE$" role="3uHU7B">
                    <node concept="3qc1$W" id="5MGqnSkqBE_" role="3SuevR">
                      <property role="3qc1Xj" value="8" />
                    </node>
                    <node concept="37vLTw" id="5MGqnSkqBEA" role="3Sueug">
                      <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5MGqnSkqBEB" role="3uHU7w">
                    <ref role="3cqZAo" node="5MGqnSkqBFd" resolve="right_index" />
                  </node>
                </node>
                <node concept="3clFbS" id="5MGqnSkqBEC" role="3eOfB_">
                  <node concept="2DKZvD" id="5MGqnSkqBED" role="3cqZAp">
                    <node concept="3eOSWO" id="5MGqnSkqBEE" role="2DKX1R">
                      <node concept="AH0OO" id="5MGqnSkqBEF" role="3uHU7B">
                        <node concept="37vLTw" id="5MGqnSkqBEG" role="AHEQo">
                          <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5MGqnSkqBEH" role="AHHXb">
                          <ref role="3cqZAo" node="5MGqnSkqBF8" resolve="right_domain_name" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="5MGqnSkqBEI" role="3uHU7w">
                        <node concept="37vLTw" id="5MGqnSkqBEJ" role="AHEQo">
                          <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="5MGqnSkqBEK" role="AHHXb">
                          <ref role="3cqZAo" node="5MGqnSkqBF0" resolve="input_domain_name_wildcard" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5MGqnSkqBEL" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5MGqnSkqBEM" role="1tU5fm" />
            <node concept="3cmrfG" id="5MGqnSkqBEN" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5MGqnSkqBEO" role="1Dwp0S">
            <node concept="3cmrfG" id="5MGqnSkqBEP" role="3uHU7w">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="37vLTw" id="5MGqnSkqBEQ" role="3uHU7B">
              <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="5MGqnSkqBER" role="1Dwrff">
            <node concept="37vLTw" id="5MGqnSkqBES" role="2$L3a6">
              <ref role="3cqZAo" node="5MGqnSkqBEL" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5MGqnSkqBET" role="3cqZAp" />
        <node concept="3cpWs6" id="5MGqnSkqBEU" role="3cqZAp">
          <node concept="3SuevK" id="5MGqnSkqBEV" role="3cqZAk">
            <node concept="3qc1$W" id="5MGqnSkqBEW" role="3SuevR">
              <property role="3qc1Xj" value="1" />
            </node>
            <node concept="3cmrfG" id="5MGqnSkqBEX" role="3Sueug">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3qc1$W" id="5MGqnSkqBEZ" role="3clF45">
        <property role="3qc1Xj" value="1" />
      </node>
      <node concept="37vLTG" id="5MGqnSkqBF0" role="3clF46">
        <property role="TrG5h" value="input_domain_name_wildcard" />
        <node concept="10Q1$e" id="5MGqnSkqBF1" role="1tU5fm">
          <node concept="3qc1$W" id="5MGqnSkqBF2" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBF3" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="2D7PWU" id="5MGqnSkqBF4" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBF5" role="3clF46">
        <property role="TrG5h" value="left_domain_name" />
        <node concept="10Q1$e" id="5MGqnSkqBF6" role="1tU5fm">
          <node concept="3qc1$W" id="5MGqnSkqBF7" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBF8" role="3clF46">
        <property role="TrG5h" value="right_domain_name" />
        <node concept="10Q1$e" id="5MGqnSkqBF9" role="1tU5fm">
          <node concept="3qc1$W" id="5MGqnSkqBFa" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBFb" role="3clF46">
        <property role="TrG5h" value="left_index" />
        <node concept="3qc1$W" id="5MGqnSkqBFc" role="1tU5fm">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBFd" role="3clF46">
        <property role="TrG5h" value="right_index" />
        <node concept="3qc1$W" id="5MGqnSkqBFe" role="1tU5fm">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBFf" role="3clF46">
        <property role="TrG5h" value="left_path_array" />
        <node concept="10Q1$e" id="5MGqnSkqBFg" role="1tU5fm">
          <node concept="2D7PWU" id="5MGqnSkqBFh" role="10Q1$1">
            <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBFi" role="3clF46">
        <property role="TrG5h" value="right_path_array" />
        <node concept="10Q1$e" id="5MGqnSkqBFj" role="1tU5fm">
          <node concept="2D7PWU" id="5MGqnSkqBFk" role="10Q1$1">
            <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBFl" role="3clF46">
        <property role="TrG5h" value="left_dir" />
        <node concept="3qc1$W" id="5MGqnSkqBFm" role="1tU5fm">
          <property role="3qc1Xj" value="64" />
        </node>
      </node>
      <node concept="37vLTG" id="5MGqnSkqBFn" role="3clF46">
        <property role="TrG5h" value="right_dir" />
        <node concept="3qc1$W" id="5MGqnSkqBFo" role="1tU5fm">
          <property role="3qc1Xj" value="64" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5MGqnSkqBFp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7LvGvL8ETzG" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5cb95" role="jymVt">
      <property role="DRO8Q" value="convert uint_8[] to F_p -- Method 1" />
    </node>
    <node concept="2YIFZL" id="2ojeUmlJ1_E" role="jymVt">
      <property role="TrG5h" value="convert_8_to_Fp" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2ojeUmlJ1_F" role="3clF47">
        <node concept="3clFbH" id="2ojeUmlJ1_G" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5cc7J" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cc7L" role="3SKWNk">
            <property role="3SKdUp" value="decompose uint_8 into bit array" />
          </node>
        </node>
        <node concept="3cpWs8" id="2ojeUmlJ1_H" role="3cqZAp">
          <node concept="3cpWsn" id="2ojeUmlJ1_I" role="3cpWs9">
            <property role="TrG5h" value="Fp_array" />
            <node concept="10Q1$e" id="2ojeUmlJ1_J" role="1tU5fm">
              <node concept="2D7PWU" id="6g5PVEboYNx" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="2ShNRf" id="2ojeUmlJ1_L" role="33vP2m">
              <node concept="3$_iS1" id="2ojeUmlJ1_M" role="2ShVmc">
                <node concept="3$GHV9" id="2ojeUmlJ1_N" role="3$GQph">
                  <node concept="3cmrfG" id="2ojeUmlJ1_O" role="3$I4v7">
                    <property role="3cmrfH" value="8" />
                  </node>
                </node>
                <node concept="2D7PWU" id="6g5PVEboZ4n" role="3$_nBY">
                  <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2ojeUmlJ1_Q" role="3cqZAp">
          <node concept="3cpWsn" id="2ojeUmlJ1_R" role="3cpWs9">
            <property role="TrG5h" value="bit_array" />
            <node concept="10Q1$e" id="2ojeUmlJ1_S" role="1tU5fm">
              <node concept="10Q1$e" id="2ojeUmlJ1_T" role="10Q1$1">
                <node concept="1QD1ZQ" id="2ojeUmlJ1_U" role="10Q1$1" />
              </node>
            </node>
            <node concept="2ShNRf" id="2ojeUmlJ1_V" role="33vP2m">
              <node concept="3$_iS1" id="2ojeUmlJ1_W" role="2ShVmc">
                <node concept="3$GHV9" id="2ojeUmlJ1_X" role="3$GQph">
                  <node concept="3cmrfG" id="2ojeUmlJ1_Y" role="3$I4v7">
                    <property role="3cmrfH" value="255" />
                  </node>
                </node>
                <node concept="3$GHV9" id="2ojeUmlJ1_Z" role="3$GQph">
                  <node concept="3cmrfG" id="2ojeUmlJ1A0" role="3$I4v7">
                    <property role="3cmrfH" value="8" />
                  </node>
                </node>
                <node concept="1QD1ZQ" id="2ojeUmlJ1A1" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2ojeUmlJ1A2" role="3cqZAp">
          <node concept="3cpWsn" id="2ojeUmlJ1A3" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2ojeUmlJ1A4" role="1tU5fm" />
            <node concept="3cmrfG" id="2ojeUmlJ1A5" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="2ojeUmlJ1A6" role="2LFqv$">
            <node concept="3clFbF" id="2ojeUmlJ1A7" role="3cqZAp">
              <node concept="37vLTI" id="2ojeUmlJ1A8" role="3clFbG">
                <node concept="2OqwBi" id="2ojeUmlJ1A9" role="37vLTx">
                  <node concept="AH0OO" id="2ojeUmlJ1Aa" role="2Oq$k0">
                    <node concept="37vLTw" id="2ojeUmlJ1Ab" role="AHEQo">
                      <ref role="3cqZAo" node="2ojeUmlJ1A3" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="2ojeUmlJ1Ac" role="AHHXb">
                      <ref role="3cqZAo" node="2ojeUmlJ1Ci" resolve="byte_array" />
                    </node>
                  </node>
                  <node concept="1VPAEj" id="2ojeUmlJ1Ad" role="2OqNvi" />
                </node>
                <node concept="AH0OO" id="2ojeUmlJ1Ae" role="37vLTJ">
                  <node concept="37vLTw" id="2ojeUmlJ1Af" role="AHEQo">
                    <ref role="3cqZAo" node="2ojeUmlJ1A3" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="2ojeUmlJ1Ag" role="AHHXb">
                    <ref role="3cqZAo" node="2ojeUmlJ1_R" resolve="bit_array" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="2ojeUmlJ1Ah" role="1Dwp0S">
            <node concept="3cmrfG" id="2ojeUmlJ1Ai" role="3uHU7w">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="37vLTw" id="2ojeUmlJ1Aj" role="3uHU7B">
              <ref role="3cqZAo" node="2ojeUmlJ1A3" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="2ojeUmlJ1Ak" role="1Dwrff">
            <node concept="37vLTw" id="2ojeUmlJ1Al" role="2$L3a6">
              <ref role="3cqZAo" node="2ojeUmlJ1A3" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ojeUmlJ1Am" role="3cqZAp" />
        <node concept="3cpWs8" id="2ojeUmlJ1An" role="3cqZAp">
          <node concept="3cpWsn" id="2ojeUmlJ1Ao" role="3cpWs9">
            <property role="TrG5h" value="bit_buffer" />
            <node concept="10Q1$e" id="2ojeUmlJ1Ap" role="1tU5fm">
              <node concept="1QD1ZQ" id="2ojeUmlJ1Aq" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="2ojeUmlJ1Ar" role="33vP2m">
              <node concept="3$_iS1" id="2ojeUmlJ1As" role="2ShVmc">
                <node concept="3$GHV9" id="2ojeUmlJ1At" role="3$GQph">
                  <node concept="3cmrfG" id="2ojeUmlJ1Au" role="3$I4v7">
                    <property role="3cmrfH" value="2040" />
                  </node>
                </node>
                <node concept="1QD1ZQ" id="2ojeUmlJ1Av" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvUACpIN" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvUACpIQ" role="3cpWs9">
            <property role="TrG5h" value="tempt" />
            <node concept="1QD1ZQ" id="2NUrvUACpIL" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="2I69w_yJrIs" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5cclQ" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cclS" role="3SKWNk">
            <property role="3SKdUp" value="This needs convert since bits type in xjsnark is reversed" />
          </node>
        </node>
        <node concept="1Dw8fO" id="2ojeUmlJ1Aw" role="3cqZAp">
          <node concept="3clFbS" id="2ojeUmlJ1Ax" role="2LFqv$">
            <node concept="1Dw8fO" id="2ojeUmlJ1Ay" role="3cqZAp">
              <node concept="3clFbS" id="2ojeUmlJ1Az" role="2LFqv$">
                <node concept="3clFbF" id="2ojeUmlJ1A$" role="3cqZAp">
                  <node concept="37vLTI" id="2ojeUmlJ1A_" role="3clFbG">
                    <node concept="AH0OO" id="2ojeUmlJ1AA" role="37vLTx">
                      <node concept="37vLTw" id="2ojeUmlJ1AB" role="AHEQo">
                        <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                      </node>
                      <node concept="AH0OO" id="2ojeUmlJ1AC" role="AHHXb">
                        <node concept="37vLTw" id="2ojeUmlJ1AD" role="AHEQo">
                          <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="2ojeUmlJ1AE" role="AHHXb">
                          <ref role="3cqZAo" node="2ojeUmlJ1_R" resolve="bit_array" />
                        </node>
                      </node>
                    </node>
                    <node concept="AH0OO" id="2ojeUmlJ1AF" role="37vLTJ">
                      <node concept="3cpWs3" id="2ojeUmlJ1AG" role="AHEQo">
                        <node concept="37vLTw" id="2ojeUmlJ1AH" role="3uHU7w">
                          <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                        </node>
                        <node concept="17qRlL" id="2ojeUmlJ1AI" role="3uHU7B">
                          <node concept="37vLTw" id="2ojeUmlJ1AJ" role="3uHU7B">
                            <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
                          </node>
                          <node concept="3cmrfG" id="2ojeUmlJ1AK" role="3uHU7w">
                            <property role="3cmrfH" value="8" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="2ojeUmlJ1AL" role="AHHXb">
                        <ref role="3cqZAo" node="2ojeUmlJ1Ao" resolve="bit_buffer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2NUrvUACpUu" role="3cqZAp">
                  <node concept="37vLTI" id="2NUrvUACpVR" role="3clFbG">
                    <node concept="AH0OO" id="2NUrvUACq1s" role="37vLTx">
                      <node concept="37vLTw" id="2NUrvUACq32" role="AHEQo">
                        <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                      </node>
                      <node concept="AH0OO" id="2NUrvUACpYm" role="AHHXb">
                        <node concept="37vLTw" id="2NUrvUACpZZ" role="AHEQo">
                          <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="2NUrvUACpWB" role="AHHXb">
                          <ref role="3cqZAo" node="2ojeUmlJ1_R" resolve="bit_array" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2I69w_yJs0P" role="37vLTJ">
                      <ref role="3cqZAo" node="2NUrvUACpIQ" resolve="tempt" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2NUrvUA_anD" role="3cqZAp">
                  <node concept="37vLTI" id="2NUrvUA_arq" role="3clFbG">
                    <node concept="AH0OO" id="2NUrvUAAet5" role="37vLTx">
                      <node concept="3cpWsd" id="2NUrvUAAeEI" role="AHEQo">
                        <node concept="37vLTw" id="2NUrvUAAeEV" role="3uHU7w">
                          <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                        </node>
                        <node concept="3cmrfG" id="2NUrvUABjFe" role="3uHU7B">
                          <property role="3cmrfH" value="7" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="2NUrvUA_avH" role="AHHXb">
                        <node concept="37vLTw" id="2NUrvUA_aBU" role="AHEQo">
                          <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="2NUrvUA_atd" role="AHHXb">
                          <ref role="3cqZAo" node="2ojeUmlJ1_R" resolve="bit_array" />
                        </node>
                      </node>
                    </node>
                    <node concept="AH0OO" id="2NUrvUAAepu" role="37vLTJ">
                      <node concept="37vLTw" id="2NUrvUAAere" role="AHEQo">
                        <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                      </node>
                      <node concept="AH0OO" id="2NUrvUA_aoW" role="AHHXb">
                        <node concept="37vLTw" id="2NUrvUA_aqg" role="AHEQo">
                          <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="2NUrvUA_anB" role="AHHXb">
                          <ref role="3cqZAo" node="2ojeUmlJ1_R" resolve="bit_array" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2NUrvUACoOy" role="3cqZAp">
                  <node concept="37vLTI" id="2NUrvUACpcb" role="3clFbG">
                    <node concept="AH0OO" id="2NUrvUACoT1" role="37vLTJ">
                      <node concept="3cpWsd" id="2NUrvUACp8m" role="AHEQo">
                        <node concept="37vLTw" id="2NUrvUACp8z" role="3uHU7w">
                          <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                        </node>
                        <node concept="3cmrfG" id="2NUrvUACoZG" role="3uHU7B">
                          <property role="3cmrfH" value="7" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="2NUrvUACoQr" role="AHHXb">
                        <node concept="37vLTw" id="2NUrvUACoRS" role="AHEQo">
                          <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="2NUrvUACoOw" role="AHHXb">
                          <ref role="3cqZAo" node="2ojeUmlJ1_R" resolve="bit_array" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2I69w_yJs8U" role="37vLTx">
                      <ref role="3cqZAo" node="2NUrvUACpIQ" resolve="tempt" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2ojeUmlJ1AN" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="2ojeUmlJ1AO" role="1tU5fm" />
                <node concept="3cmrfG" id="2ojeUmlJ1AP" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2ojeUmlJ1AQ" role="1Dwp0S">
                <node concept="3cmrfG" id="2ojeUmlJ1AR" role="3uHU7w">
                  <property role="3cmrfH" value="8" />
                </node>
                <node concept="37vLTw" id="2ojeUmlJ1AS" role="3uHU7B">
                  <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                </node>
              </node>
              <node concept="3uNrnE" id="2ojeUmlJ1AT" role="1Dwrff">
                <node concept="37vLTw" id="2ojeUmlJ1AU" role="2$L3a6">
                  <ref role="3cqZAo" node="2ojeUmlJ1AN" resolve="j" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2ojeUmlJ1AV" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2ojeUmlJ1AW" role="1tU5fm" />
            <node concept="3cmrfG" id="2ojeUmlJ1AX" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2ojeUmlJ1AY" role="1Dwp0S">
            <node concept="3cmrfG" id="2ojeUmlJ1AZ" role="3uHU7w">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="37vLTw" id="2ojeUmlJ1B0" role="3uHU7B">
              <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="2ojeUmlJ1B1" role="1Dwrff">
            <node concept="37vLTw" id="2ojeUmlJ1B2" role="2$L3a6">
              <ref role="3cqZAo" node="2ojeUmlJ1AV" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ojeUmlJ1B3" role="3cqZAp" />
        <node concept="3cpWs8" id="2I69w_yJssX" role="3cqZAp">
          <node concept="3cpWsn" id="2I69w_yJssY" role="3cpWs9">
            <property role="TrG5h" value="Fp_buffer" />
            <node concept="3qc1$W" id="2I69w_yJssZ" role="1tU5fm">
              <property role="3qc1Xj" value="254" />
            </node>
            <node concept="3SuevK" id="2I69w_yJst0" role="33vP2m">
              <node concept="3qc1$W" id="2I69w_yJst1" role="3SuevR">
                <property role="3qc1Xj" value="254" />
              </node>
              <node concept="3cmrfG" id="2I69w_yJst2" role="3Sueug">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvUAMe8w" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvUAMe8z" role="3cpWs9">
            <property role="TrG5h" value="bit_tempt" />
            <node concept="3qc1$W" id="2NUrvUAMe8u" role="1tU5fm">
              <property role="3qc1Xj" value="254" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NUrvUAMffa" role="3cqZAp">
          <node concept="3cpWsn" id="2NUrvUAMffd" role="3cpWs9">
            <property role="TrG5h" value="Fp_tempt" />
            <node concept="3qc1$W" id="2NUrvUAMff8" role="1tU5fm">
              <property role="3qc1Xj" value="254" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NUrvUE7Q1U" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5cc$X" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cc$Z" role="3SKWNk">
            <property role="3SKdUp" value="recombine bit array into F_p array" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5ccO8" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5ccOa" role="3SKWNk">
            <property role="3SKdUp" value="254 bit will convert to one F_p element" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5cd2T" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cd2V" role="3SKWNk">
            <property role="3SKdUp" value="Note that it's not secure to convert 254bit directly since F_p is also 254 bit" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5cdhg" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cdhi" role="3SKWNk">
            <property role="3SKdUp" value="Implementation needs to be tuned (revise it to 253bit or increase F_p)" />
          </node>
        </node>
        <node concept="1Dw8fO" id="2I69w_yJst3" role="3cqZAp">
          <node concept="3clFbS" id="2I69w_yJst4" role="2LFqv$">
            <node concept="1Dw8fO" id="2I69w_yJst5" role="3cqZAp">
              <node concept="3clFbS" id="2I69w_yJst6" role="2LFqv$">
                <node concept="3SKdUt" id="2NUrvUE7Qay" role="3cqZAp">
                  <node concept="3SKdUq" id="2NUrvUE7Qa$" role="3SKWNk">
                    <property role="3SKdUp" value="get the bit" />
                  </node>
                </node>
                <node concept="3clFbF" id="2NUrvUAMejZ" role="3cqZAp">
                  <node concept="37vLTI" id="2NUrvUAMelh" role="3clFbG">
                    <node concept="3SuevK" id="2NUrvUAMelW" role="37vLTx">
                      <node concept="3qc1$W" id="2NUrvUAMelY" role="3SuevR">
                        <property role="3qc1Xj" value="254" />
                      </node>
                      <node concept="AH0OO" id="2NUrvUAMeo0" role="3Sueug">
                        <node concept="3cpWs3" id="2NUrvUAMeBv" role="AHEQo">
                          <node concept="37vLTw" id="2NUrvUAMeBG" role="3uHU7w">
                            <ref role="3cqZAo" node="2I69w_yJst7" resolve="j" />
                          </node>
                          <node concept="17qRlL" id="2NUrvUAMetB" role="3uHU7B">
                            <node concept="37vLTw" id="2NUrvUAMep9" role="3uHU7B">
                              <ref role="3cqZAo" node="2I69w_yJstn" resolve="i" />
                            </node>
                            <node concept="3cmrfG" id="2NUrvUAMetO" role="3uHU7w">
                              <property role="3cmrfH" value="254" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2NUrvUAMemH" role="AHHXb">
                          <ref role="3cqZAo" node="2ojeUmlJ1Ao" resolve="bit_buffer" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2NUrvUAMejX" role="37vLTJ">
                      <ref role="3cqZAo" node="2NUrvUAMe8z" resolve="bit_tempt" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="2NUrvUE7Qch" role="3cqZAp">
                  <node concept="3SKdUq" id="2NUrvUE7Qcj" role="3SKWNk">
                    <property role="3SKdUp" value="left shift this bit" />
                  </node>
                </node>
                <node concept="3clFbF" id="2I69w_yGRIe" role="3cqZAp">
                  <node concept="37vLTI" id="2I69w_yGRJB" role="3clFbG">
                    <node concept="37vLTw" id="2I69w_yGRKc" role="37vLTx">
                      <ref role="3cqZAo" node="2NUrvUAMe8z" resolve="bit_tempt" />
                    </node>
                    <node concept="37vLTw" id="2I69w_yGRIc" role="37vLTJ">
                      <ref role="3cqZAo" node="2NUrvUAMffd" resolve="Fp_tempt" />
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="2I69w_ywqpn" role="3cqZAp">
                  <node concept="3clFbS" id="2I69w_ywqpp" role="2LFqv$">
                    <node concept="3clFbF" id="2I69w_ywqS3" role="3cqZAp">
                      <node concept="37vLTI" id="2I69w_ywqSK" role="3clFbG">
                        <node concept="17qRlL" id="2I69w_ywqUg" role="37vLTx">
                          <node concept="37vLTw" id="2I69w_yGRGo" role="3uHU7B">
                            <ref role="3cqZAo" node="2NUrvUAMffd" resolve="Fp_tempt" />
                          </node>
                          <node concept="3SuevK" id="2I69w_ywr4b" role="3uHU7w">
                            <node concept="3qc1$W" id="2I69w_ywr4d" role="3SuevR">
                              <property role="3qc1Xj" value="2" />
                            </node>
                            <node concept="3cmrfG" id="2I69w_ywr4X" role="3Sueug">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2I69w_ywqS1" role="37vLTJ">
                          <ref role="3cqZAo" node="2NUrvUAMffd" resolve="Fp_tempt" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2I69w_ywqpq" role="1Duv9x">
                    <property role="TrG5h" value="k" />
                    <node concept="10Oyi0" id="2I69w_ywqqa" role="1tU5fm" />
                    <node concept="3cmrfG" id="2I69w_ywqqX" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="2I69w_ywqwK" role="1Dwp0S">
                    <node concept="3cpWsd" id="2I69w_ywqFM" role="3uHU7w">
                      <node concept="37vLTw" id="2I69w_ywqFZ" role="3uHU7w">
                        <ref role="3cqZAo" node="2I69w_yJst7" resolve="j" />
                      </node>
                      <node concept="3cmrfG" id="2I69w_ywqwX" role="3uHU7B">
                        <property role="3cmrfH" value="253" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2I69w_ywqro" role="3uHU7B">
                      <ref role="3cqZAo" node="2I69w_ywqpq" resolve="k" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="2I69w_ywqP5" role="1Dwrff">
                    <node concept="37vLTw" id="2I69w_ywqP7" role="2$L3a6">
                      <ref role="3cqZAo" node="2I69w_ywqpq" resolve="k" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2I69w_yySf$" role="3cqZAp">
                  <node concept="37vLTI" id="2I69w_yySjU" role="3clFbG">
                    <node concept="37vLTw" id="2I69w_yySjX" role="37vLTJ">
                      <ref role="3cqZAo" node="2I69w_yJssY" resolve="Fp_buffer" />
                    </node>
                    <node concept="3cpWs3" id="2I69w_yySl9" role="37vLTx">
                      <node concept="37vLTw" id="2I69w_yySlQ" role="3uHU7w">
                        <ref role="3cqZAo" node="2I69w_yJssY" resolve="Fp_buffer" />
                      </node>
                      <node concept="37vLTw" id="2I69w_yySjW" role="3uHU7B">
                        <ref role="3cqZAo" node="2NUrvUAMffd" resolve="Fp_tempt" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="2I69w_yJst7" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="2I69w_yJst8" role="1tU5fm" />
                <node concept="3cmrfG" id="2I69w_yJst9" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="2I69w_yJsta" role="1Dwp0S">
                <node concept="3cmrfG" id="2I69w_yJstb" role="3uHU7w">
                  <property role="3cmrfH" value="254" />
                </node>
                <node concept="37vLTw" id="2I69w_yJstc" role="3uHU7B">
                  <ref role="3cqZAo" node="2I69w_yJst7" resolve="j" />
                </node>
              </node>
              <node concept="3uNrnE" id="2I69w_yJstd" role="1Dwrff">
                <node concept="37vLTw" id="2I69w_yJste" role="2$L3a6">
                  <ref role="3cqZAo" node="2I69w_yJst7" resolve="j" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2I69w_yJstf" role="3cqZAp">
              <node concept="37vLTI" id="2I69w_yJstg" role="3clFbG">
                <node concept="AH0OO" id="2I69w_yJsth" role="37vLTJ">
                  <node concept="37vLTw" id="2I69w_yJsti" role="AHEQo">
                    <ref role="3cqZAo" node="2I69w_yJstn" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="2I69w_yJstj" role="AHHXb">
                    <ref role="3cqZAo" node="2ojeUmlJ1_I" resolve="Fp_array" />
                  </node>
                </node>
                <node concept="_hXgR" id="2I69w_yJstk" role="37vLTx">
                  <node concept="2D7PWU" id="2I69w_yJstl" role="_hXgQ">
                    <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="2I69w_yJstm" role="_hXgL">
                    <ref role="3cqZAo" node="2I69w_yJssY" resolve="Fp_buffer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2I69w_yBPwB" role="3cqZAp">
              <node concept="37vLTI" id="2I69w_yBPzm" role="3clFbG">
                <node concept="3cmrfG" id="2I69w_yBPzO" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2I69w_yBPw_" role="37vLTJ">
                  <ref role="3cqZAo" node="2I69w_yJssY" resolve="Fp_buffer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2I69w_yJstn" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2I69w_yJsto" role="1tU5fm" />
            <node concept="3cmrfG" id="2I69w_yJstp" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2I69w_yJstq" role="1Dwp0S">
            <node concept="3cmrfG" id="2I69w_yJstr" role="3uHU7w">
              <property role="3cmrfH" value="8" />
            </node>
            <node concept="37vLTw" id="2I69w_yJsts" role="3uHU7B">
              <ref role="3cqZAo" node="2I69w_yJstn" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="2I69w_yJstt" role="1Dwrff">
            <node concept="37vLTw" id="2I69w_yJstu" role="2$L3a6">
              <ref role="3cqZAo" node="2I69w_yJstn" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2I69w_yJsn5" role="3cqZAp" />
        <node concept="3clFbH" id="2ojeUmlJ1Cc" role="3cqZAp" />
        <node concept="3cpWs6" id="2ojeUmlJ1Cd" role="3cqZAp">
          <node concept="37vLTw" id="2ojeUmlJ1Ce" role="3cqZAk">
            <ref role="3cqZAo" node="2ojeUmlJ1_I" resolve="Fp_array" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2ojeUmlJ1Cf" role="1B3o_S" />
      <node concept="10Q1$e" id="2ojeUmlJ1Cg" role="3clF45">
        <node concept="2D7PWU" id="6g5PVEboYD$" role="10Q1$1">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="2ojeUmlJ1Ci" role="3clF46">
        <property role="TrG5h" value="byte_array" />
        <node concept="10Q1$e" id="2ojeUmlJ1Cj" role="1tU5fm">
          <node concept="3qc1$W" id="2ojeUmlJ1Ck" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NUrvUr2tp9" role="jymVt" />
    <node concept="DJdLC" id="3h4liP5cbHN" role="jymVt">
      <property role="DRO8Q" value="convert uint_8[] to F_p[8] -- Method 2" />
    </node>
    <node concept="2YIFZL" id="368D9512hNj" role="jymVt">
      <property role="TrG5h" value="convert_8_to_Fp_python" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="368D9512hNk" role="3clF47">
        <node concept="3clFbH" id="368D9512hNl" role="3cqZAp" />
        <node concept="3cpWs8" id="368D9512hNm" role="3cqZAp">
          <node concept="3cpWsn" id="368D9512hNn" role="3cpWs9">
            <property role="TrG5h" value="Fp_array" />
            <node concept="10Q1$e" id="368D9512hNo" role="1tU5fm">
              <node concept="2D7PWU" id="368D9512hNp" role="10Q1$1">
                <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
              </node>
            </node>
            <node concept="2ShNRf" id="368D9512hNq" role="33vP2m">
              <node concept="3$_iS1" id="368D9512hNr" role="2ShVmc">
                <node concept="3$GHV9" id="368D9512hNs" role="3$GQph">
                  <node concept="3cmrfG" id="368D9512hNt" role="3$I4v7">
                    <property role="3cmrfH" value="8" />
                  </node>
                </node>
                <node concept="2D7PWU" id="368D9512hNu" role="3$_nBY">
                  <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D9512ebs" role="3cqZAp">
          <node concept="3cpWsn" id="368D9512ebv" role="3cpWs9">
            <property role="TrG5h" value="large_int" />
            <node concept="3qc1$W" id="368D9512ebq" role="1tU5fm">
              <property role="3qc1Xj" value="2040" />
            </node>
            <node concept="3SuevK" id="368D9512eOt" role="33vP2m">
              <node concept="3qc1$W" id="368D9512eOv" role="3SuevR">
                <property role="3qc1Xj" value="2040" />
              </node>
              <node concept="3cmrfG" id="368D9512eR8" role="3Sueug">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D9517lg$" role="3cqZAp">
          <node concept="3cpWsn" id="368D9517lgB" role="3cpWs9">
            <property role="TrG5h" value="tempt" />
            <node concept="3qc1$W" id="368D9517lgy" role="1tU5fm">
              <property role="3qc1Xj" value="2040" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D9512ehR" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5ceOE" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5ceOG" role="3SKWNk">
            <property role="3SKdUp" value="concate uint_8[] to get uint_2040" />
          </node>
        </node>
        <node concept="1Dw8fO" id="368D9512equ" role="3cqZAp">
          <node concept="3clFbS" id="368D9512eqw" role="2LFqv$">
            <node concept="3clFbF" id="368D9517lmA" role="3cqZAp">
              <node concept="37vLTI" id="368D9517lnA" role="3clFbG">
                <node concept="3SuevK" id="368D9517loe" role="37vLTx">
                  <node concept="3qc1$W" id="368D9517log" role="3SuevR">
                    <property role="3qc1Xj" value="2040" />
                  </node>
                  <node concept="1GRDU$" id="368D9517ltu" role="3Sueug">
                    <node concept="1eOMI4" id="368D9517luA" role="3uHU7w">
                      <node concept="17qRlL" id="368D9517l_J" role="1eOMHV">
                        <node concept="37vLTw" id="368D9517l_W" role="3uHU7w">
                          <ref role="3cqZAo" node="368D9512eqx" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="368D9517lvI" role="3uHU7B">
                          <property role="3cmrfH" value="8" />
                        </node>
                      </node>
                    </node>
                    <node concept="3SuevK" id="368D9517lp7" role="3uHU7B">
                      <node concept="3qc1$W" id="368D9517lp9" role="3SuevR">
                        <property role="3qc1Xj" value="2040" />
                      </node>
                      <node concept="AH0OO" id="368D9517lrf" role="3Sueug">
                        <node concept="37vLTw" id="368D9517lsl" role="AHEQo">
                          <ref role="3cqZAo" node="368D9512eqx" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="368D9517lqb" role="AHHXb">
                          <ref role="3cqZAo" node="368D9512hUA" resolve="byte_array" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="368D9517lm$" role="37vLTJ">
                  <ref role="3cqZAo" node="368D9517lgB" resolve="tempt" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="368D9512eRH" role="3cqZAp">
              <node concept="37vLTI" id="368D9512eSz" role="3clFbG">
                <node concept="3cpWs3" id="368D9512eUj" role="37vLTx">
                  <node concept="37vLTw" id="368D9512eTm" role="3uHU7B">
                    <ref role="3cqZAo" node="368D9512ebv" resolve="large_int" />
                  </node>
                  <node concept="37vLTw" id="368D9517lP8" role="3uHU7w">
                    <ref role="3cqZAo" node="368D9517lgB" resolve="tempt" />
                  </node>
                </node>
                <node concept="37vLTw" id="368D9512eRF" role="37vLTJ">
                  <ref role="3cqZAo" node="368D9512ebv" resolve="large_int" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="368D9515EUt" role="3cqZAp" />
          </node>
          <node concept="3cpWsn" id="368D9512eqx" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="368D9512euV" role="1tU5fm" />
            <node concept="3cmrfG" id="368D9512evz" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="368D9512e_I" role="1Dwp0S">
            <node concept="3cmrfG" id="368D9512e_V" role="3uHU7w">
              <property role="3cmrfH" value="255" />
            </node>
            <node concept="37vLTw" id="368D9512ewf" role="3uHU7B">
              <ref role="3cqZAo" node="368D9512eqx" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="368D9512eKR" role="1Dwrff">
            <node concept="37vLTw" id="368D9512eKT" role="2$L3a6">
              <ref role="3cqZAo" node="368D9512eqx" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5cfrl" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cfrn" role="3SKWNk">
            <property role="3SKdUp" value=" decompse uint_2040 into bit array" />
          </node>
        </node>
        <node concept="3cpWs8" id="368D951935p" role="3cqZAp">
          <node concept="3cpWsn" id="368D951935s" role="3cpWs9">
            <property role="TrG5h" value="bit_array" />
            <node concept="10Q1$e" id="368D951938p" role="1tU5fm">
              <node concept="1QD1ZQ" id="368D951935n" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="368D95193aY" role="33vP2m">
              <node concept="3$_iS1" id="368D95194fm" role="2ShVmc">
                <node concept="3$GHV9" id="368D95194fo" role="3$GQph">
                  <node concept="3cmrfG" id="368D95194gc" role="3$I4v7">
                    <property role="3cmrfH" value="2040" />
                  </node>
                </node>
                <node concept="1QD1ZQ" id="368D95194fg" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="368D95194uf" role="3cqZAp">
          <node concept="37vLTI" id="368D95194xH" role="3clFbG">
            <node concept="37vLTw" id="368D95194ud" role="37vLTJ">
              <ref role="3cqZAo" node="368D951935s" resolve="bit_array" />
            </node>
            <node concept="2OqwBi" id="368D95194Au" role="37vLTx">
              <node concept="37vLTw" id="368D95194_e" role="2Oq$k0">
                <ref role="3cqZAo" node="368D9512ebv" resolve="large_int" />
              </node>
              <node concept="1VPAEj" id="368D95194Bj" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D95194Cc" role="3cqZAp" />
        <node concept="3clFbH" id="368D95195NH" role="3cqZAp" />
        <node concept="3cpWs8" id="368D951e$1A" role="3cqZAp">
          <node concept="3cpWsn" id="368D951e$1B" role="3cpWs9">
            <property role="TrG5h" value="Fp_buffer" />
            <node concept="3qc1$W" id="368D951e$1C" role="1tU5fm">
              <property role="3qc1Xj" value="254" />
            </node>
            <node concept="3SuevK" id="368D951e$1D" role="33vP2m">
              <node concept="3qc1$W" id="368D951e$1E" role="3SuevR">
                <property role="3qc1Xj" value="254" />
              </node>
              <node concept="3cmrfG" id="368D951e$1F" role="3Sueug">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D95195VI" role="3cqZAp">
          <node concept="3cpWsn" id="368D95195VJ" role="3cpWs9">
            <property role="TrG5h" value="bit_tempt" />
            <node concept="3qc1$W" id="368D95195VK" role="1tU5fm">
              <property role="3qc1Xj" value="254" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="368D95195VL" role="3cqZAp">
          <node concept="3cpWsn" id="368D95195VM" role="3cpWs9">
            <property role="TrG5h" value="Fp_tempt" />
            <node concept="3qc1$W" id="368D95195VN" role="1tU5fm">
              <property role="3qc1Xj" value="254" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D95195RA" role="3cqZAp" />
        <node concept="3SKdUt" id="3h4liP5cfIE" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cfIF" role="3SKWNk">
            <property role="3SKdUp" value="recombine bit array into F_p array" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5cfIG" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cfIH" role="3SKWNk">
            <property role="3SKdUp" value="254 bit will convert to one F_p element" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5cfII" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cfIJ" role="3SKWNk">
            <property role="3SKdUp" value="Note that it's not secure to convert 254bit directly since F_p is also 254 bit" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5cfIK" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cfIL" role="3SKWNk">
            <property role="3SKdUp" value="Implementation needs to be tuned (revise it to 253bit or increase F_p)" />
          </node>
        </node>
        <node concept="3SKdUt" id="3h4liP5cgdb" role="3cqZAp">
          <node concept="3SKdUq" id="3h4liP5cgdd" role="3SKWNk">
            <property role="3SKdUp" value="It's enough to support 253bytes input since it's the largest size for input domain name" />
          </node>
        </node>
        <node concept="1Dw8fO" id="368D951963u" role="3cqZAp">
          <node concept="3clFbS" id="368D951963v" role="2LFqv$">
            <node concept="1Dw8fO" id="368D951963w" role="3cqZAp">
              <node concept="3clFbS" id="368D951963x" role="2LFqv$">
                <node concept="3SKdUt" id="368D951963y" role="3cqZAp">
                  <node concept="3SKdUq" id="368D951963z" role="3SKWNk">
                    <property role="3SKdUp" value="get the bit" />
                  </node>
                </node>
                <node concept="3clFbF" id="368D951963$" role="3cqZAp">
                  <node concept="37vLTI" id="368D951963_" role="3clFbG">
                    <node concept="3SuevK" id="368D951963A" role="37vLTx">
                      <node concept="3qc1$W" id="368D951963B" role="3SuevR">
                        <property role="3qc1Xj" value="254" />
                      </node>
                      <node concept="AH0OO" id="368D951963C" role="3Sueug">
                        <node concept="3cpWs3" id="368D951963D" role="AHEQo">
                          <node concept="37vLTw" id="368D951963E" role="3uHU7w">
                            <ref role="3cqZAo" node="368D951965h" resolve="j" />
                          </node>
                          <node concept="17qRlL" id="368D951963F" role="3uHU7B">
                            <node concept="37vLTw" id="368D951963G" role="3uHU7B">
                              <ref role="3cqZAo" node="368D951965J" resolve="i" />
                            </node>
                            <node concept="3cmrfG" id="368D951963H" role="3uHU7w">
                              <property role="3cmrfH" value="254" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="368D95196pn" role="AHHXb">
                          <ref role="3cqZAo" node="368D951935s" resolve="bit_array" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="368D951963J" role="37vLTJ">
                      <ref role="3cqZAo" node="368D95195VJ" resolve="bit_tempt" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="368D951963K" role="3cqZAp">
                  <node concept="3SKdUq" id="368D951963L" role="3SKWNk">
                    <property role="3SKdUp" value="left shift this bit" />
                  </node>
                </node>
                <node concept="3clFbF" id="368D951963V" role="3cqZAp">
                  <node concept="37vLTI" id="368D951963W" role="3clFbG">
                    <node concept="37vLTw" id="368D951963X" role="37vLTx">
                      <ref role="3cqZAo" node="368D95195VJ" resolve="bit_tempt" />
                    </node>
                    <node concept="37vLTw" id="368D951963Y" role="37vLTJ">
                      <ref role="3cqZAo" node="368D95195VM" resolve="Fp_tempt" />
                    </node>
                  </node>
                </node>
                <node concept="1Dw8fO" id="368D951963Z" role="3cqZAp">
                  <node concept="3clFbS" id="368D9519640" role="2LFqv$">
                    <node concept="3clFbF" id="368D9519641" role="3cqZAp">
                      <node concept="37vLTI" id="368D9519642" role="3clFbG">
                        <node concept="17qRlL" id="368D9519643" role="37vLTx">
                          <node concept="37vLTw" id="368D9519644" role="3uHU7B">
                            <ref role="3cqZAo" node="368D95195VM" resolve="Fp_tempt" />
                          </node>
                          <node concept="3SuevK" id="368D9519645" role="3uHU7w">
                            <node concept="3qc1$W" id="368D9519646" role="3SuevR">
                              <property role="3qc1Xj" value="2" />
                            </node>
                            <node concept="3cmrfG" id="368D9519647" role="3Sueug">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="368D9519648" role="37vLTJ">
                          <ref role="3cqZAo" node="368D95195VM" resolve="Fp_tempt" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="368D9519649" role="1Duv9x">
                    <property role="TrG5h" value="k" />
                    <node concept="10Oyi0" id="368D951964a" role="1tU5fm" />
                    <node concept="3cmrfG" id="368D951964b" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3eOVzh" id="368D951964c" role="1Dwp0S">
                    <node concept="37vLTw" id="368D951964e" role="3uHU7w">
                      <ref role="3cqZAo" node="368D951965h" resolve="j" />
                    </node>
                    <node concept="37vLTw" id="368D951964g" role="3uHU7B">
                      <ref role="3cqZAo" node="368D9519649" resolve="k" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="368D951964h" role="1Dwrff">
                    <node concept="37vLTw" id="368D951964i" role="2$L3a6">
                      <ref role="3cqZAo" node="368D9519649" resolve="k" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="368D951964S" role="3cqZAp">
                  <node concept="37vLTI" id="368D951964T" role="3clFbG">
                    <node concept="37vLTw" id="368D951964U" role="37vLTJ">
                      <ref role="3cqZAo" node="368D951e$1B" resolve="Fp_buffer" />
                    </node>
                    <node concept="3cpWs3" id="368D951964V" role="37vLTx">
                      <node concept="37vLTw" id="368D951964W" role="3uHU7w">
                        <ref role="3cqZAo" node="368D951e$1B" resolve="Fp_buffer" />
                      </node>
                      <node concept="37vLTw" id="368D951964X" role="3uHU7B">
                        <ref role="3cqZAo" node="368D95195VM" resolve="Fp_tempt" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="368D951965h" role="1Duv9x">
                <property role="TrG5h" value="j" />
                <node concept="10Oyi0" id="368D951965i" role="1tU5fm" />
                <node concept="3cmrfG" id="368D951965j" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="368D951965k" role="1Dwp0S">
                <node concept="3cmrfG" id="368D951965l" role="3uHU7w">
                  <property role="3cmrfH" value="254" />
                </node>
                <node concept="37vLTw" id="368D951965m" role="3uHU7B">
                  <ref role="3cqZAo" node="368D951965h" resolve="j" />
                </node>
              </node>
              <node concept="3uNrnE" id="368D951965n" role="1Dwrff">
                <node concept="37vLTw" id="368D951965o" role="2$L3a6">
                  <ref role="3cqZAo" node="368D951965h" resolve="j" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="368D951965p" role="3cqZAp">
              <node concept="3SKdUq" id="368D951965q" role="3SKWNk">
                <property role="3SKdUp" value="turn uint254 to Fp" />
              </node>
            </node>
            <node concept="3clFbF" id="368D951965r" role="3cqZAp">
              <node concept="37vLTI" id="368D951965s" role="3clFbG">
                <node concept="AH0OO" id="368D951965t" role="37vLTJ">
                  <node concept="37vLTw" id="368D951965u" role="AHEQo">
                    <ref role="3cqZAo" node="368D951965J" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="368D951965v" role="AHHXb">
                    <ref role="3cqZAo" node="368D9512hNn" resolve="Fp_array" />
                  </node>
                </node>
                <node concept="_hXgR" id="368D951965w" role="37vLTx">
                  <node concept="2D7PWU" id="368D951965x" role="_hXgQ">
                    <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
                  </node>
                  <node concept="37vLTw" id="368D951965y" role="_hXgL">
                    <ref role="3cqZAo" node="368D951e$1B" resolve="Fp_buffer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="368D951965z" role="3cqZAp">
              <node concept="37vLTI" id="368D951965$" role="3clFbG">
                <node concept="3cmrfG" id="368D951965_" role="37vLTx">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="368D951965A" role="37vLTJ">
                  <ref role="3cqZAo" node="368D951e$1B" resolve="Fp_buffer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="368D951965J" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="368D951965K" role="1tU5fm" />
            <node concept="3cmrfG" id="368D951965L" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="368D951965M" role="1Dwp0S">
            <node concept="3cmrfG" id="368D951965N" role="3uHU7w">
              <property role="3cmrfH" value="8" />
            </node>
            <node concept="37vLTw" id="368D951965O" role="3uHU7B">
              <ref role="3cqZAo" node="368D951965J" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="368D951965P" role="1Dwrff">
            <node concept="37vLTw" id="368D951965Q" role="2$L3a6">
              <ref role="3cqZAo" node="368D951965J" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="368D95195qD" role="3cqZAp" />
        <node concept="3clFbH" id="368D95195o1" role="3cqZAp" />
        <node concept="3cpWs6" id="368D9512hUx" role="3cqZAp">
          <node concept="37vLTw" id="368D9512hUy" role="3cqZAk">
            <ref role="3cqZAo" node="368D9512hNn" resolve="Fp_array" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="368D9512hUz" role="1B3o_S" />
      <node concept="10Q1$e" id="368D9512hU$" role="3clF45">
        <node concept="2D7PWU" id="368D9512hU_" role="10Q1$1">
          <ref role="2D7PX4" to="tluv:6QM7J$VCJ7G" resolve="p" />
        </node>
      </node>
      <node concept="37vLTG" id="368D9512hUA" role="3clF46">
        <property role="TrG5h" value="byte_array" />
        <node concept="10Q1$e" id="368D9512hUB" role="1tU5fm">
          <node concept="3qc1$W" id="368D9512hUC" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="368D951ezOY" role="jymVt" />
    <node concept="2tJIrI" id="368D9512daz" role="jymVt" />
    <node concept="2tJIrI" id="2NUrvUr11zH" role="jymVt" />
    <node concept="3Tm1VV" id="2NUrvUr11ze" role="1B3o_S" />
  </node>
</model>

