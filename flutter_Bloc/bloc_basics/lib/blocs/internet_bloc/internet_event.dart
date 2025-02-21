//possible events
//this class is use to create a connection between all classes
abstract class InternetEvent {} //abstract class is a class which is not going to use anywhere, we are not going to create an instance of this class

class InternetLostEvent extends InternetEvent {}

class InternetGainedEvent extends InternetEvent {}
